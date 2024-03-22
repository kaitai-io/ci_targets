import kaitai_struct_nim_runtime
import options

type
  NavParentRecursive* = ref object of KaitaiStruct
    `value`*: uint8
    `next`*: NavParentRecursive
    `parent`*: KaitaiStruct
    `parentValueInst`: uint8
    `parentValueInstFlag`: bool

proc read*(_: typedesc[NavParentRecursive], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentRecursive

proc parentValue*(this: NavParentRecursive): uint8

proc read*(_: typedesc[NavParentRecursive], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentRecursive =
  template this: untyped = result
  this = new(NavParentRecursive)
  let root = if root == nil: cast[NavParentRecursive](this) else: cast[NavParentRecursive](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr
  if this.value == 255:
    let nextExpr = NavParentRecursive.read(this.io, this.root, this)
    this.next = nextExpr

proc parentValue(this: NavParentRecursive): uint8 = 
  if this.parentValueInstFlag:
    return this.parentValueInst
  if this.value != 255:
    let parentValueInstExpr = uint8((NavParentRecursive(this.parent)).value)
    this.parentValueInst = parentValueInstExpr
  this.parentValueInstFlag = true
  return this.parentValueInst

proc fromFile*(_: typedesc[NavParentRecursive], filename: string): NavParentRecursive =
  NavParentRecursive.read(newKaitaiFileStream(filename), nil, nil)


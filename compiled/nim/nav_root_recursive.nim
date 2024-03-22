import kaitai_struct_nim_runtime
import options

type
  NavRootRecursive* = ref object of KaitaiStruct
    `value`*: uint8
    `next`*: NavRootRecursive
    `parent`*: KaitaiStruct
    `rootValueInst`: uint8
    `rootValueInstFlag`: bool

proc read*(_: typedesc[NavRootRecursive], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRootRecursive

proc rootValue*(this: NavRootRecursive): uint8

proc read*(_: typedesc[NavRootRecursive], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavRootRecursive =
  template this: untyped = result
  this = new(NavRootRecursive)
  let root = if root == nil: cast[NavRootRecursive](this) else: cast[NavRootRecursive](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr
  if this.value == 255:
    let nextExpr = NavRootRecursive.read(this.io, this.root, this)
    this.next = nextExpr

proc rootValue(this: NavRootRecursive): uint8 = 
  if this.rootValueInstFlag:
    return this.rootValueInst
  let rootValueInstExpr = uint8(NavRootRecursive(this.root).value)
  this.rootValueInst = rootValueInstExpr
  this.rootValueInstFlag = true
  return this.rootValueInst

proc fromFile*(_: typedesc[NavRootRecursive], filename: string): NavRootRecursive =
  NavRootRecursive.read(newKaitaiFileStream(filename), nil, nil)


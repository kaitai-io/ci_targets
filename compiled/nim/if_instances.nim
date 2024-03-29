import kaitai_struct_nim_runtime
import options

type
  IfInstances* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `neverHappensInst`: uint8
    `neverHappensInstFlag`: bool

proc read*(_: typedesc[IfInstances], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfInstances

proc neverHappens*(this: IfInstances): uint8

proc read*(_: typedesc[IfInstances], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfInstances =
  template this: untyped = result
  this = new(IfInstances)
  let root = if root == nil: cast[IfInstances](this) else: cast[IfInstances](root)
  this.io = io
  this.root = root
  this.parent = parent


proc neverHappens(this: IfInstances): uint8 = 
  if this.neverHappensInstFlag:
    return this.neverHappensInst
  if false:
    let pos = this.io.pos()
    this.io.seek(int(100500))
    let neverHappensInstExpr = this.io.readU1()
    this.neverHappensInst = neverHappensInstExpr
    this.io.seek(pos)
  this.neverHappensInstFlag = true
  return this.neverHappensInst

proc fromFile*(_: typedesc[IfInstances], filename: string): IfInstances =
  IfInstances.read(newKaitaiFileStream(filename), nil, nil)


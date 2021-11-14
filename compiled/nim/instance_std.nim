import kaitai_struct_nim_runtime
import options

type
  InstanceStd* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `headerInst`: string
    `headerInstFlag`: bool

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceStd

proc header*(this: InstanceStd): string

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceStd =
  template this: untyped = result
  this = new(InstanceStd)
  let root = if root == nil: cast[InstanceStd](this) else: cast[InstanceStd](root)
  this.io = io
  this.root = root
  this.parent = parent


proc header(this: InstanceStd): string = 
  if this.headerInstFlag:
    return this.headerInst
  let pos = this.io.pos()
  this.io.seek(int(2))
  let headerInstExpr = encode(this.io.readBytes(int(5)), "ASCII")
  this.headerInst = headerInstExpr
  this.io.seek(pos)
  this.headerInstFlag = true
  return this.headerInst

proc fromFile*(_: typedesc[InstanceStd], filename: string): InstanceStd =
  InstanceStd.read(newKaitaiFileStream(filename), nil, nil)


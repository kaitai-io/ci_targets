import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  InstanceStd* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    headerInst*: Option[string]

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceStd

proc header*(this: InstanceStd): string

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceStd =
  template this: untyped = result
  this = new(InstanceStd)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc header(this: InstanceStd): string = 
  if isSome(this.headerInst):
    return get(this.headerInst)
  let pos = this.io.pos()
  this.io.seek(int(2))
  this.headerInst = some(convert(this.io.readBytes(int(5)), srcEncoding = "ASCII"))
  this.io.seek(pos)
  if isSome(this.headerInst):
    return get(this.headerInst)

proc fromFile*(_: typedesc[InstanceStd], filename: string): InstanceStd =
  InstanceStd.read(newKaitaiFileStream(filename), nil, nil)


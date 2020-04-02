import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidFailInst* = ref object of KaitaiStruct
    a*: uint8
    parent*: KaitaiStruct
    instInst*: Option[uint8]

proc read*(_: typedesc[ValidFailInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailInst

proc inst*(this: ValidFailInst): uint8
proc read*(_: typedesc[ValidFailInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailInst =
  template this: untyped = result
  this = new(ValidFailInst)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if this.inst >= 0:
    this.a = this.io.readU1()

proc inst(this: ValidFailInst): uint8 = 
  if isSome(this.instInst):
    return get(this.instInst)
  let pos = this.io.pos()
  this.io.seek(5)
  this.instInst = some(this.io.readU1())
  this.io.seek(pos)
  return get(this.instInst)

proc fromFile*(_: typedesc[ValidFailInst], filename: string): ValidFailInst =
  ValidFailInst.read(newKaitaiFileStream(filename), nil, nil)


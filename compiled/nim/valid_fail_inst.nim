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
  let root = if root == nil: cast[ValidFailInst](this) else: cast[ValidFailInst](root)
  this.io = io
  this.root = root
  this.parent = parent

  if this.inst >= 0:
    let aExpr = this.io.readU1()
    this.a = aExpr

proc inst(this: ValidFailInst): uint8 = 
  if isSome(this.instInst):
    return get(this.instInst)
  let pos = this.io.pos()
  this.io.seek(int(5))
  let instInstExpr = this.io.readU1()
  this.instInst = instInstExpr
  this.io.seek(pos)
  if isSome(this.instInst):
    return get(this.instInst)

proc fromFile*(_: typedesc[ValidFailInst], filename: string): ValidFailInst =
  ValidFailInst.read(newKaitaiFileStream(filename), nil, nil)


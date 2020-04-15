import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  OptionalId* = ref object of KaitaiStruct
    unnamed0*: uint8
    unnamed1*: uint8
    unnamed2*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OptionalId


proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OptionalId =
  template this: untyped = result
  this = new(OptionalId)
  let root = if root == nil: cast[OptionalId](this) else: cast[OptionalId](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unnamed0Expr = this.io.readU1()
  this.unnamed0 = unnamed0Expr
  let unnamed1Expr = this.io.readU1()
  this.unnamed1 = unnamed1Expr
  let unnamed2Expr = this.io.readBytes(int(5))
  this.unnamed2 = unnamed2Expr

proc fromFile*(_: typedesc[OptionalId], filename: string): OptionalId =
  OptionalId.read(newKaitaiFileStream(filename), nil, nil)


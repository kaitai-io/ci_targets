import kaitai_struct_nim_runtime
import options

type
  ValidShort* = ref object of KaitaiStruct
    `magic1`*: seq[byte]
    `uint8`*: uint8
    `sint8`*: int8
    `magicUint`*: string
    `uint16`*: uint16
    `uint32`*: uint32
    `uint64`*: uint64
    `magicSint`*: string
    `sint16`*: int16
    `sint32`*: int32
    `sint64`*: int64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidShort


proc read*(_: typedesc[ValidShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidShort =
  template this: untyped = result
  this = new(ValidShort)
  let root = if root == nil: cast[ValidShort](this) else: cast[ValidShort](root)
  this.io = io
  this.root = root
  this.parent = parent

  let magic1Expr = this.io.readBytes(int(6))
  this.magic1 = magic1Expr
  let uint8Expr = this.io.readU1()
  this.uint8 = uint8Expr
  let sint8Expr = this.io.readS1()
  this.sint8 = sint8Expr
  let magicUintExpr = encode(this.io.readBytes(int(10)), "UTF-8")
  this.magicUint = magicUintExpr
  let uint16Expr = this.io.readU2le()
  this.uint16 = uint16Expr
  let uint32Expr = this.io.readU4le()
  this.uint32 = uint32Expr
  let uint64Expr = this.io.readU8le()
  this.uint64 = uint64Expr
  let magicSintExpr = encode(this.io.readBytes(int(10)), "UTF-8")
  this.magicSint = magicSintExpr
  let sint16Expr = this.io.readS2le()
  this.sint16 = sint16Expr
  let sint32Expr = this.io.readS4le()
  this.sint32 = sint32Expr
  let sint64Expr = this.io.readS8le()
  this.sint64 = sint64Expr

proc fromFile*(_: typedesc[ValidShort], filename: string): ValidShort =
  ValidShort.read(newKaitaiFileStream(filename), nil, nil)


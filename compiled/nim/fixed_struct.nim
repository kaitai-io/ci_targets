import kaitai_struct_nim_runtime
import options

type
  FixedStruct* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `hdrInst`: FixedStruct_Header
    `hdrInstFlag`: bool
  FixedStruct_Header* = ref object of KaitaiStruct
    `magic1`*: seq[byte]
    `uint8`*: uint8
    `sint8`*: int8
    `magicUint`*: seq[byte]
    `uint16`*: uint16
    `uint32`*: uint32
    `uint64`*: uint64
    `magicSint`*: seq[byte]
    `sint16`*: int16
    `sint32`*: int32
    `sint64`*: int64
    `magicUintLe`*: seq[byte]
    `uint16le`*: uint16
    `uint32le`*: uint32
    `uint64le`*: uint64
    `magicSintLe`*: seq[byte]
    `sint16le`*: int16
    `sint32le`*: int32
    `sint64le`*: int64
    `magicUintBe`*: seq[byte]
    `uint16be`*: uint16
    `uint32be`*: uint32
    `uint64be`*: uint64
    `magicSintBe`*: seq[byte]
    `sint16be`*: int16
    `sint32be`*: int32
    `sint64be`*: int64
    `parent`*: FixedStruct

proc read*(_: typedesc[FixedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedStruct
proc read*(_: typedesc[FixedStruct_Header], io: KaitaiStream, root: KaitaiStruct, parent: FixedStruct): FixedStruct_Header

proc hdr*(this: FixedStruct): FixedStruct_Header

proc read*(_: typedesc[FixedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): FixedStruct =
  template this: untyped = result
  this = new(FixedStruct)
  let root = if root == nil: cast[FixedStruct](this) else: cast[FixedStruct](root)
  this.io = io
  this.root = root
  this.parent = parent


proc hdr(this: FixedStruct): FixedStruct_Header = 
  if this.hdrInstFlag:
    return this.hdrInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let hdrInstExpr = FixedStruct_Header.read(this.io, this.root, this)
  this.hdrInst = hdrInstExpr
  this.io.seek(pos)
  this.hdrInstFlag = true
  return this.hdrInst

proc fromFile*(_: typedesc[FixedStruct], filename: string): FixedStruct =
  FixedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[FixedStruct_Header], io: KaitaiStream, root: KaitaiStruct, parent: FixedStruct): FixedStruct_Header =
  template this: untyped = result
  this = new(FixedStruct_Header)
  let root = if root == nil: cast[FixedStruct](this) else: cast[FixedStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let magic1Expr = this.io.readBytes(int(6))
  this.magic1 = magic1Expr
  let uint8Expr = this.io.readU1()
  this.uint8 = uint8Expr
  let sint8Expr = this.io.readS1()
  this.sint8 = sint8Expr
  let magicUintExpr = this.io.readBytes(int(10))
  this.magicUint = magicUintExpr
  let uint16Expr = this.io.readU2le()
  this.uint16 = uint16Expr
  let uint32Expr = this.io.readU4le()
  this.uint32 = uint32Expr
  let uint64Expr = this.io.readU8le()
  this.uint64 = uint64Expr
  let magicSintExpr = this.io.readBytes(int(10))
  this.magicSint = magicSintExpr
  let sint16Expr = this.io.readS2le()
  this.sint16 = sint16Expr
  let sint32Expr = this.io.readS4le()
  this.sint32 = sint32Expr
  let sint64Expr = this.io.readS8le()
  this.sint64 = sint64Expr
  let magicUintLeExpr = this.io.readBytes(int(9))
  this.magicUintLe = magicUintLeExpr
  let uint16leExpr = this.io.readU2le()
  this.uint16le = uint16leExpr
  let uint32leExpr = this.io.readU4le()
  this.uint32le = uint32leExpr
  let uint64leExpr = this.io.readU8le()
  this.uint64le = uint64leExpr
  let magicSintLeExpr = this.io.readBytes(int(9))
  this.magicSintLe = magicSintLeExpr
  let sint16leExpr = this.io.readS2le()
  this.sint16le = sint16leExpr
  let sint32leExpr = this.io.readS4le()
  this.sint32le = sint32leExpr
  let sint64leExpr = this.io.readS8le()
  this.sint64le = sint64leExpr
  let magicUintBeExpr = this.io.readBytes(int(9))
  this.magicUintBe = magicUintBeExpr
  let uint16beExpr = this.io.readU2be()
  this.uint16be = uint16beExpr
  let uint32beExpr = this.io.readU4be()
  this.uint32be = uint32beExpr
  let uint64beExpr = this.io.readU8be()
  this.uint64be = uint64beExpr
  let magicSintBeExpr = this.io.readBytes(int(9))
  this.magicSintBe = magicSintBeExpr
  let sint16beExpr = this.io.readS2be()
  this.sint16be = sint16beExpr
  let sint32beExpr = this.io.readS4be()
  this.sint32be = sint32beExpr
  let sint64beExpr = this.io.readS8be()
  this.sint64be = sint64beExpr

proc fromFile*(_: typedesc[FixedStruct_Header], filename: string): FixedStruct_Header =
  FixedStruct_Header.read(newKaitaiFileStream(filename), nil, nil)


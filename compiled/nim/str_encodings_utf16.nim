import kaitai_struct_nim_runtime
import options

type
  StrEncodingsUtf16* = ref object of KaitaiStruct
    `lenBe`*: uint32
    `beBomRemoved`*: StrEncodingsUtf16_StrBeBomRemoved
    `lenLe`*: uint32
    `leBomRemoved`*: StrEncodingsUtf16_StrLeBomRemoved
    `parent`*: KaitaiStruct
    `rawBeBomRemoved`*: seq[byte]
    `rawLeBomRemoved`*: seq[byte]
  StrEncodingsUtf16_StrBeBomRemoved* = ref object of KaitaiStruct
    `bom`*: uint16
    `str`*: string
    `parent`*: StrEncodingsUtf16
  StrEncodingsUtf16_StrLeBomRemoved* = ref object of KaitaiStruct
    `bom`*: uint16
    `str`*: string
    `parent`*: StrEncodingsUtf16

proc read*(_: typedesc[StrEncodingsUtf16], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsUtf16
proc read*(_: typedesc[StrEncodingsUtf16_StrBeBomRemoved], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsUtf16): StrEncodingsUtf16_StrBeBomRemoved
proc read*(_: typedesc[StrEncodingsUtf16_StrLeBomRemoved], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsUtf16): StrEncodingsUtf16_StrLeBomRemoved


proc read*(_: typedesc[StrEncodingsUtf16], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsUtf16 =
  template this: untyped = result
  this = new(StrEncodingsUtf16)
  let root = if root == nil: cast[StrEncodingsUtf16](this) else: cast[StrEncodingsUtf16](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenBeExpr = this.io.readU4le()
  this.lenBe = lenBeExpr
  let rawBeBomRemovedExpr = this.io.readBytes(int(this.lenBe))
  this.rawBeBomRemoved = rawBeBomRemovedExpr
  let rawBeBomRemovedIo = newKaitaiStream(rawBeBomRemovedExpr)
  let beBomRemovedExpr = StrEncodingsUtf16_StrBeBomRemoved.read(rawBeBomRemovedIo, this.root, this)
  this.beBomRemoved = beBomRemovedExpr
  let lenLeExpr = this.io.readU4le()
  this.lenLe = lenLeExpr
  let rawLeBomRemovedExpr = this.io.readBytes(int(this.lenLe))
  this.rawLeBomRemoved = rawLeBomRemovedExpr
  let rawLeBomRemovedIo = newKaitaiStream(rawLeBomRemovedExpr)
  let leBomRemovedExpr = StrEncodingsUtf16_StrLeBomRemoved.read(rawLeBomRemovedIo, this.root, this)
  this.leBomRemoved = leBomRemovedExpr

proc fromFile*(_: typedesc[StrEncodingsUtf16], filename: string): StrEncodingsUtf16 =
  StrEncodingsUtf16.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsUtf16_StrBeBomRemoved], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsUtf16): StrEncodingsUtf16_StrBeBomRemoved =
  template this: untyped = result
  this = new(StrEncodingsUtf16_StrBeBomRemoved)
  let root = if root == nil: cast[StrEncodingsUtf16](this) else: cast[StrEncodingsUtf16](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bomExpr = this.io.readU2be()
  this.bom = bomExpr
  let strExpr = encode(this.io.readBytesFull(), "UTF-16BE")
  this.str = strExpr

proc fromFile*(_: typedesc[StrEncodingsUtf16_StrBeBomRemoved], filename: string): StrEncodingsUtf16_StrBeBomRemoved =
  StrEncodingsUtf16_StrBeBomRemoved.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsUtf16_StrLeBomRemoved], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsUtf16): StrEncodingsUtf16_StrLeBomRemoved =
  template this: untyped = result
  this = new(StrEncodingsUtf16_StrLeBomRemoved)
  let root = if root == nil: cast[StrEncodingsUtf16](this) else: cast[StrEncodingsUtf16](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bomExpr = this.io.readU2le()
  this.bom = bomExpr
  let strExpr = encode(this.io.readBytesFull(), "UTF-16LE")
  this.str = strExpr

proc fromFile*(_: typedesc[StrEncodingsUtf16_StrLeBomRemoved], filename: string): StrEncodingsUtf16_StrLeBomRemoved =
  StrEncodingsUtf16_StrLeBomRemoved.read(newKaitaiFileStream(filename), nil, nil)


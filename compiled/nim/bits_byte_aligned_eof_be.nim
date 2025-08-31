import kaitai_struct_nim_runtime
import options

type
  BitsByteAlignedEofBe* = ref object of KaitaiStruct
    `prebuf`*: seq[byte]
    `bits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsByteAlignedEofBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAlignedEofBe


proc read*(_: typedesc[BitsByteAlignedEofBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAlignedEofBe =
  template this: untyped = result
  this = new(BitsByteAlignedEofBe)
  let root = if root == nil: cast[BitsByteAlignedEofBe](this) else: cast[BitsByteAlignedEofBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let prebufExpr = this.io.readBytes(int(8))
  this.prebuf = prebufExpr
  let bitsExpr = this.io.readBitsIntBe(31)
  this.bits = bitsExpr

proc fromFile*(_: typedesc[BitsByteAlignedEofBe], filename: string): BitsByteAlignedEofBe =
  BitsByteAlignedEofBe.read(newKaitaiFileStream(filename), nil, nil)


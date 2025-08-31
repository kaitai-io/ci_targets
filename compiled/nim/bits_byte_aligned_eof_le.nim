import kaitai_struct_nim_runtime
import options

type
  BitsByteAlignedEofLe* = ref object of KaitaiStruct
    `prebuf`*: seq[byte]
    `bits`*: uint64
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BitsByteAlignedEofLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAlignedEofLe


proc read*(_: typedesc[BitsByteAlignedEofLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsByteAlignedEofLe =
  template this: untyped = result
  this = new(BitsByteAlignedEofLe)
  let root = if root == nil: cast[BitsByteAlignedEofLe](this) else: cast[BitsByteAlignedEofLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let prebufExpr = this.io.readBytes(int(8))
  this.prebuf = prebufExpr
  let bitsExpr = this.io.readBitsIntLe(31)
  this.bits = bitsExpr

proc fromFile*(_: typedesc[BitsByteAlignedEofLe], filename: string): BitsByteAlignedEofLe =
  BitsByteAlignedEofLe.read(newKaitaiFileStream(filename), nil, nil)


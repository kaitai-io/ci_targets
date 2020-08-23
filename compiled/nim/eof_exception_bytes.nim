import kaitai_struct_nim_runtime
import options

type
  EofExceptionBytes* = ref object of KaitaiStruct
    `buf`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBytes


proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBytes =
  template this: untyped = result
  this = new(EofExceptionBytes)
  let root = if root == nil: cast[EofExceptionBytes](this) else: cast[EofExceptionBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bufExpr = this.io.readBytes(int(13))
  this.buf = bufExpr

proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)


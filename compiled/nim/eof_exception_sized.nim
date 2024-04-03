import kaitai_struct_nim_runtime
import options

type
  EofExceptionSized* = ref object of KaitaiStruct
    `buf`*: EofExceptionSized_Foo
    `parent`*: KaitaiStruct
    `rawBuf`*: seq[byte]
  EofExceptionSized_Foo* = ref object of KaitaiStruct
    `parent`*: EofExceptionSized

proc read*(_: typedesc[EofExceptionSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionSized
proc read*(_: typedesc[EofExceptionSized_Foo], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSized): EofExceptionSized_Foo


proc read*(_: typedesc[EofExceptionSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionSized =
  template this: untyped = result
  this = new(EofExceptionSized)
  let root = if root == nil: cast[EofExceptionSized](this) else: cast[EofExceptionSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawBufExpr = this.io.readBytes(int(13))
  this.rawBuf = rawBufExpr
  let rawBufIo = newKaitaiStream(rawBufExpr)
  let bufExpr = EofExceptionSized_Foo.read(rawBufIo, this.root, this)
  this.buf = bufExpr

proc fromFile*(_: typedesc[EofExceptionSized], filename: string): EofExceptionSized =
  EofExceptionSized.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EofExceptionSized_Foo], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSized): EofExceptionSized_Foo =
  template this: untyped = result
  this = new(EofExceptionSized_Foo)
  let root = if root == nil: cast[EofExceptionSized](this) else: cast[EofExceptionSized](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EofExceptionSized_Foo], filename: string): EofExceptionSized_Foo =
  EofExceptionSized_Foo.read(newKaitaiFileStream(filename), nil, nil)


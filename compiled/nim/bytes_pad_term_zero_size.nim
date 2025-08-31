import kaitai_struct_nim_runtime
import options

type
  BytesPadTermZeroSize* = ref object of KaitaiStruct
    `strPad`*: seq[byte]
    `strTerm`*: seq[byte]
    `strTermAndPad`*: seq[byte]
    `strTermInclude`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BytesPadTermZeroSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermZeroSize


proc read*(_: typedesc[BytesPadTermZeroSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermZeroSize =
  template this: untyped = result
  this = new(BytesPadTermZeroSize)
  let root = if root == nil: cast[BytesPadTermZeroSize](this) else: cast[BytesPadTermZeroSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = this.io.readBytes(int(0)).bytesStripRight(64)
  this.strPad = strPadExpr
  let strTermExpr = this.io.readBytes(int(0)).bytesTerminate(64, false)
  this.strTerm = strTermExpr
  let strTermAndPadExpr = this.io.readBytes(int(0)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = this.io.readBytes(int(0)).bytesTerminate(64, true)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[BytesPadTermZeroSize], filename: string): BytesPadTermZeroSize =
  BytesPadTermZeroSize.read(newKaitaiFileStream(filename), nil, nil)


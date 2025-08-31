import kaitai_struct_nim_runtime
import options

type
  TermBytes3* = ref object of KaitaiStruct
    `s1`*: seq[byte]
    `s2`*: seq[byte]
    `s3`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermBytes3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes3


proc read*(_: typedesc[TermBytes3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes3 =
  template this: untyped = result
  this = new(TermBytes3)
  let root = if root == nil: cast[TermBytes3](this) else: cast[TermBytes3](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = this.io.readBytesTerm(124, false, false, true)
  this.s1 = s1Expr
  let s2Expr = this.io.readBytesTerm(64, false, false, true)
  this.s2 = s2Expr
  let s3Expr = this.io.readBytesTerm(64, false, true, true)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermBytes3], filename: string): TermBytes3 =
  TermBytes3.read(newKaitaiFileStream(filename), nil, nil)


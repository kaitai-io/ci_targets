import kaitai_struct_nim_runtime
import options

type
  TermBytes2* = ref object of KaitaiStruct
    `s1`*: seq[byte]
    `s2`*: seq[byte]
    `s3`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermBytes2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes2


proc read*(_: typedesc[TermBytes2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes2 =
  template this: untyped = result
  this = new(TermBytes2)
  let root = if root == nil: cast[TermBytes2](this) else: cast[TermBytes2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = this.io.readBytesTerm(124, false, true, true)
  this.s1 = s1Expr
  let s2Expr = this.io.readBytesTerm(124, true, true, true)
  this.s2 = s2Expr
  let s3Expr = this.io.readBytesTerm(64, false, false, true)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermBytes2], filename: string): TermBytes2 =
  TermBytes2.read(newKaitaiFileStream(filename), nil, nil)


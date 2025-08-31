import kaitai_struct_nim_runtime
import options

type
  TermStrz2* = ref object of KaitaiStruct
    `s1`*: string
    `s2`*: string
    `s3`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermStrz2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz2


proc read*(_: typedesc[TermStrz2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz2 =
  template this: untyped = result
  this = new(TermStrz2)
  let root = if root == nil: cast[TermStrz2](this) else: cast[TermStrz2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytesTerm(124, true, true, true), "UTF-8")
  this.s2 = s2Expr
  let s3Expr = encode(this.io.readBytesTerm(64, false, false, true), "UTF-8")
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStrz2], filename: string): TermStrz2 =
  TermStrz2.read(newKaitaiFileStream(filename), nil, nil)


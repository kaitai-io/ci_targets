import kaitai_struct_nim_runtime
import options

type
  TermStrz* = ref object of KaitaiStruct
    `s1`*: string
    `s2`*: string
    `s3`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz


proc read*(_: typedesc[TermStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz =
  template this: untyped = result
  this = new(TermStrz)
  let root = if root == nil: cast[TermStrz](this) else: cast[TermStrz](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytesTerm(124, false, false, true), "UTF-8")
  this.s2 = s2Expr
  let s3Expr = encode(this.io.readBytesTerm(64, true, true, true), "UTF-8")
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStrz], filename: string): TermStrz =
  TermStrz.read(newKaitaiFileStream(filename), nil, nil)


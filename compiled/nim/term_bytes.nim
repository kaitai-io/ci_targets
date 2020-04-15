import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  TermBytes* = ref object of KaitaiStruct
    s1*: seq[byte]
    s2*: seq[byte]
    s3*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[TermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes


proc read*(_: typedesc[TermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes =
  template this: untyped = result
  this = new(TermBytes)
  let root = if root == nil: cast[TermBytes](this) else: cast[TermBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = this.io.readBytesTerm(124, false, true, true)
  this.s1 = s1Expr
  let s2Expr = this.io.readBytesTerm(124, false, false, true)
  this.s2 = s2Expr
  let s3Expr = this.io.readBytesTerm(64, true, true, true)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermBytes], filename: string): TermBytes =
  TermBytes.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  TermU1Val* = ref object of KaitaiStruct
    `foo`*: seq[byte]
    `bar`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermU1Val], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermU1Val


proc read*(_: typedesc[TermU1Val], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermU1Val =
  template this: untyped = result
  this = new(TermU1Val)
  let root = if root == nil: cast[TermU1Val](this) else: cast[TermU1Val](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readBytesTerm(227, false, false, true)
  this.foo = fooExpr
  let barExpr = encode(this.io.readBytesTerm(171, true, true, true), "UTF-8")
  this.bar = barExpr

proc fromFile*(_: typedesc[TermU1Val], filename: string): TermU1Val =
  TermU1Val.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  Docstrings* = ref object of KaitaiStruct
    `one`*: uint8
    `parent`*: KaitaiStruct
    `twoInst`*: uint8
    `threeInst`*: int8
  Docstrings_ComplexSubtype* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct

proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Docstrings
proc read*(_: typedesc[Docstrings_ComplexSubtype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Docstrings_ComplexSubtype

proc two*(this: Docstrings): uint8
proc three*(this: Docstrings): int8


##[
One-liner description of a type.
]##
proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Docstrings =
  template this: untyped = result
  this = new(Docstrings)
  let root = if root == nil: cast[Docstrings](this) else: cast[Docstrings](root)
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  A pretty verbose description for sequence attribute "one"
  ]##
  let oneExpr = this.io.readU1()
  this.one = oneExpr

proc two(this: Docstrings): uint8 = 

  ##[
  Another description for parse instance "two"
  ]##
  if this.twoInst != nil:
    return this.twoInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let twoInstExpr = this.io.readU1()
  this.twoInst = twoInstExpr
  this.io.seek(pos)
  if this.twoInst != nil:
    return this.twoInst

proc three(this: Docstrings): int8 = 

  ##[
  And yet another one for value instance "three"
  ]##
  if this.threeInst != nil:
    return this.threeInst
  let threeInstExpr = int8(66)
  this.threeInst = threeInstExpr
  if this.threeInst != nil:
    return this.threeInst

proc fromFile*(_: typedesc[Docstrings], filename: string): Docstrings =
  Docstrings.read(newKaitaiFileStream(filename), nil, nil)


##[
This subtype is never used, yet has a very long description
that spans multiple lines. It should be formatted accordingly,
even in languages that have single-line comments for
docstrings. Actually, there's even a MarkDown-style list here
with several bullets:

* one
* two
* three

And the text continues after that. Here's a MarkDown-style link:
[woohoo](http://example.com) - one day it will be supported as
well.

]##
proc read*(_: typedesc[Docstrings_ComplexSubtype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Docstrings_ComplexSubtype =
  template this: untyped = result
  this = new(Docstrings_ComplexSubtype)
  let root = if root == nil: cast[Docstrings](this) else: cast[Docstrings](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[Docstrings_ComplexSubtype], filename: string): Docstrings_ComplexSubtype =
  Docstrings_ComplexSubtype.read(newKaitaiFileStream(filename), nil, nil)


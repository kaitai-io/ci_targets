import kaitai_struct_nim_runtime
import options

type
  Docstrings* = ref object of KaitaiStruct
    one*: uint8
    parent*: KaitaiStruct
    twoInst*: Option[uint8]
    threeInst*: Option[int8]
  Docstrings_ComplexSubtype* = ref object of KaitaiStruct
    parent*: KaitaiStruct


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
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[Docstrings_ComplexSubtype], filename: string): Docstrings_ComplexSubtype =
  Docstrings_ComplexSubtype.read(newKaitaiFileStream(filename), nil, nil)


##[
One-liner description of a type.
]##
proc two*(this: Docstrings): uint8
proc three*(this: Docstrings): int8
proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Docstrings =
  template this: untyped = result
  this = new(Docstrings)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  A pretty verbose description for sequence attribute "one"
  ]##
  this.one = this.io.readU1()

proc two(this: Docstrings): uint8 = 

  ##[
  Another description for parse instance "two"
  ]##
  if isSome(this.twoInst):
    return get(this.twoInst)
  let pos = this.io.pos()
  this.io.seek(0)
  this.twoInst = some(this.io.readU1())
  this.io.seek(pos)
  return get(this.twoInst)

proc three(this: Docstrings): int8 = 

  ##[
  And yet another one for value instance "three"
  ]##
  if isSome(this.threeInst):
    return get(this.threeInst)
  this.threeInst = some(66)
  return get(this.threeInst)

proc fromFile*(_: typedesc[Docstrings], filename: string): Docstrings =
  Docstrings.read(newKaitaiFileStream(filename), nil, nil)


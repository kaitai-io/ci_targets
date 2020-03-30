import kaitai_struct_nim_runtime
import options

type
  Docstrings_ComplexSubtype* = ref Docstrings_ComplexSubtypeObj
  Docstrings_ComplexSubtypeObj* = object
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
  Docstrings* = ref DocstringsObj
  DocstringsObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: Docstrings
    parent*: ref RootObj
    twoInst*: Option[uint8]
    threeInst*: Option[int8]

## Docstrings_ComplexSubtype
proc read*(_: typedesc[Docstrings_ComplexSubtype], io: KaitaiStream, root: Docstrings, parent: ref RootObj): Docstrings_ComplexSubtype =
  let this = new(Docstrings_ComplexSubtype)
  let root = if root == nil: cast[Docstrings](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[Docstrings_ComplexSubtype], filename: string): Docstrings_ComplexSubtype =
  Docstrings_ComplexSubtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Docstrings_ComplexSubtypeObj) =
  close(x.io)

## Docstrings
proc two*(this: Docstrings): uint8
proc three*(this: Docstrings): int8
proc two(this: Docstrings): uint8 = 
  if isSome(this.twoInst):
    return get(this.twoInst)
  let pos = this.io.pos()
  this.io.seek(0)
  this.twoInst = some(this.io.readU1())
  this.io.seek(pos)
  return get(this.twoInst)

proc three(this: Docstrings): int8 = 
  if isSome(this.threeInst):
    return get(this.threeInst)
  this.threeInst = some(66)
  return get(this.threeInst)

proc read*(_: typedesc[Docstrings], io: KaitaiStream, root: Docstrings, parent: ref RootObj): Docstrings =
  let this = new(Docstrings)
  let root = if root == nil: cast[Docstrings](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[Docstrings], filename: string): Docstrings =
  Docstrings.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsObj) =
  close(x.io)


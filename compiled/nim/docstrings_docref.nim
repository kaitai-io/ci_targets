import kaitai_struct_nim_runtime
import options

type
  DocstringsDocref* = ref DocstringsDocrefObj
  DocstringsDocrefObj* = object
    one*: uint8
    two*: uint8
    three*: uint8
    io*: KaitaiStream
    root*: DocstringsDocref
    parent*: ref RootObj
    fooInst*: Option[bool]
    parseInstInst*: Option[uint8]

### DocstringsDocref ###
proc foo*(this: DocstringsDocref): bool
proc parseInst*(this: DocstringsDocref): uint8
proc foo(this: DocstringsDocref): bool = 
  if isSome(this.fooInst):
    return get(this.fooInst)
  let fooInst = true
  this.fooInst = some(fooInst)
  return get(this.fooInst)

proc parseInst(this: DocstringsDocref): uint8 = 
  if isSome(this.parseInstInst):
    return get(this.parseInstInst)
  let pos = this.io.pos()
  this.io.seek(0)
  let parseInstInst = this.io.readU1()
  this.parseInstInst = some(parseInstInst)
  this.io.seek(pos)
  return get(this.parseInstInst)

proc read*(_: typedesc[DocstringsDocref], io: KaitaiStream, root: DocstringsDocref, parent: ref RootObj): DocstringsDocref =
  let this = new(DocstringsDocref)
  let root = if root == nil: cast[DocstringsDocref](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  let two = this.io.readU1()
  this.two = two
  let three = this.io.readU1()
  this.three = three
  result = this

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): DocstringsDocref =
  DocstringsDocref.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsDocrefObj) =
  close(x.io)


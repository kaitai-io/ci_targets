import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DocstringsDocref* = ref object of KaitaiStruct
    one*: uint8
    two*: uint8
    three*: uint8
    parent*: KaitaiStruct
    fooInst*: Option[bool]
    parseInstInst*: Option[uint8]

proc read*(_: typedesc[DocstringsDocref], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DocstringsDocref

proc foo*(this: DocstringsDocref): bool
proc parseInst*(this: DocstringsDocref): uint8


##[
Another one-liner
@see <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
]##
proc read*(_: typedesc[DocstringsDocref], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DocstringsDocref =
  template this: untyped = result
  this = new(DocstringsDocref)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  @see "Plain text description of doc ref, page 42"
  ]##
  this.one = this.io.readU1()

  ##[
  Both doc and doc-ref are defined
  @see <a href="http://www.example.com/with/url/again">Source</a>
  ]##
  this.two = this.io.readU1()

  ##[
  @see <a href="http://www.example.com/three">Documentation name</a>
  ]##
  this.three = this.io.readU1()

proc foo(this: DocstringsDocref): bool = 

  ##[
  @see "Doc ref for instance, a plain one"
  ]##
  if isSome(this.fooInst):
    return get(this.fooInst)
  this.fooInst = some(true)
  return get(this.fooInst)

proc parseInst(this: DocstringsDocref): uint8 = 

  ##[
  @see "Now this is a really
long document ref that
spans multiple lines.
"
  ]##
  if isSome(this.parseInstInst):
    return get(this.parseInstInst)
  let pos = this.io.pos()
  this.io.seek(int(0))
  this.parseInstInst = some(this.io.readU1())
  this.io.seek(pos)
  return get(this.parseInstInst)

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): DocstringsDocref =
  DocstringsDocref.read(newKaitaiFileStream(filename), nil, nil)


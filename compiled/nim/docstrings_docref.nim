import kaitai_struct_nim_runtime
import options

type
  DocstringsDocref* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: uint8
    `three`*: uint8
    `parent`*: KaitaiStruct
    `fooInst`: bool
    `fooInstFlag`: bool
    `parseInstInst`: uint8
    `parseInstInstFlag`: bool

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
  let root = if root == nil: cast[DocstringsDocref](this) else: cast[DocstringsDocref](root)
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  @see "Plain text description of doc ref, page 42"
  ]##
  let oneExpr = this.io.readU1()
  this.one = oneExpr

  ##[
  Both doc and doc-ref are defined
  @see <a href="http://www.example.com/with/url/again">Source</a>
  ]##
  let twoExpr = this.io.readU1()
  this.two = twoExpr

  ##[
  @see <a href="http://www.example.com/three">Documentation name</a>
  ]##
  let threeExpr = this.io.readU1()
  this.three = threeExpr

proc foo(this: DocstringsDocref): bool = 

  ##[
  @see "Doc ref for instance, a plain one"
  ]##
  if this.fooInstFlag:
    return this.fooInst
  let fooInstExpr = bool(true)
  this.fooInst = fooInstExpr
  this.fooInstFlag = true
  return this.fooInst

proc parseInst(this: DocstringsDocref): uint8 = 

  ##[
  @see "Now this is a really
long document ref that
spans multiple lines.
"
  ]##
  if this.parseInstInstFlag:
    return this.parseInstInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let parseInstInstExpr = this.io.readU1()
  this.parseInstInst = parseInstInstExpr
  this.io.seek(pos)
  this.parseInstInstFlag = true
  return this.parseInstInst

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): DocstringsDocref =
  DocstringsDocref.read(newKaitaiFileStream(filename), nil, nil)


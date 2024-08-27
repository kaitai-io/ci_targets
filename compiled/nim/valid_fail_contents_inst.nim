import kaitai_struct_nim_runtime
import options

type
  ValidFailContentsInst* = ref object of KaitaiStruct
    `a`*: seq[byte]
    `parent`*: KaitaiStruct
    `fooInst`: seq[byte]
    `fooInstFlag`: bool

proc read*(_: typedesc[ValidFailContentsInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContentsInst

proc foo*(this: ValidFailContentsInst): seq[byte]

proc read*(_: typedesc[ValidFailContentsInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailContentsInst =
  template this: untyped = result
  this = new(ValidFailContentsInst)
  let root = if root == nil: cast[ValidFailContentsInst](this) else: cast[ValidFailContentsInst](root)
  this.io = io
  this.root = root
  this.parent = parent

  if len(this.foo) == 0:
    let aExpr = this.io.readBytes(int(0))
    this.a = aExpr

proc foo(this: ValidFailContentsInst): seq[byte] = 
  if this.fooInstFlag:
    return this.fooInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let fooInstExpr = this.io.readBytes(int(2))
  this.fooInst = fooInstExpr
  this.io.seek(pos)
  this.fooInstFlag = true
  return this.fooInst

proc fromFile*(_: typedesc[ValidFailContentsInst], filename: string): ValidFailContentsInst =
  ValidFailContentsInst.read(newKaitaiFileStream(filename), nil, nil)


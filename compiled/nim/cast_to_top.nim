import kaitai_struct_nim_runtime
import options

type
  CastToTop* = ref CastToTopObj
  CastToTopObj* = object
    code*: uint8
    io*: KaitaiStream
    root*: CastToTop
    parent*: ref RootObj
    headerInst*: Option[CastToTop]
    headerCastedInst*: Option[CastToTop]

## CastToTop
proc header*(this: CastToTop): CastToTop
proc headerCasted*(this: CastToTop): CastToTop
proc header(this: CastToTop): CastToTop = 
  if isSome(this.headerInst):
    return get(this.headerInst)
  let pos = this.io.pos()
  this.io.seek(1)
  this.headerInst = some(CastToTop.read(this.io))
  this.io.seek(pos)
  return get(this.headerInst)

proc headerCasted(this: CastToTop): CastToTop = 
  if isSome(this.headerCastedInst):
    return get(this.headerCastedInst)
  this.headerCastedInst = some(this.header)
  return get(this.headerCastedInst)

proc read*(_: typedesc[CastToTop], io: KaitaiStream, root: CastToTop, parent: ref RootObj): CastToTop =
  let this = new(CastToTop)
  let root = if root == nil: cast[CastToTop](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[CastToTop], filename: string): CastToTop =
  CastToTop.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastToTopObj) =
  close(x.io)


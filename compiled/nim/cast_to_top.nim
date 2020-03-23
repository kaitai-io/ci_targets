import kaitai_struct_nim_runtime

type
  CastToTop* = ref CastToTopObj
  CastToTopObj* = object
    code*: uint8
    io*: KaitaiStream
    root*: CastToTop
    parent*: ref RootObj

### CastToTop ###
proc read*(_: typedesc[CastToTop], io: KaitaiStream, root: CastToTop, parent: ref RootObj): CastToTop =
  result = new(CastToTop)
  let root = if root == nil: cast[CastToTop](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()

proc fromFile*(_: typedesc[CastToTop], filename: string): CastToTop =
  CastToTop.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastToTopObj) =
  close(x.io)


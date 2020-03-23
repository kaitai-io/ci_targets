import kaitai_struct_nim_runtime

type
  TypeTernaryOpaque* = ref TypeTernaryOpaqueObj
  TypeTernaryOpaqueObj* = object
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    io*: KaitaiStream
    root*: TypeTernaryOpaque
    parent*: ref RootObj
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string

### TypeTernaryOpaque ###
proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): TypeTernaryOpaque =
  result = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if not(isHack):
    result.rawDifWoHack = result.io.readBytes(12)
    rawDifWoHackIo = newKaitaiStringStream(rawDifWoHack)
    result.difWoHack = TermStrz.read(rawDifWoHackIo)
  if isHack:
    result.rawRawDifWithHack = result.io.readBytes(12)
    result.rawDifWithHack = rawRawDifWithHack.processXor(3)
    rawDifWithHackIo = newKaitaiStringStream(rawDifWithHack)
    result.difWithHack = TermStrz.read(rawDifWithHackIo)

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)


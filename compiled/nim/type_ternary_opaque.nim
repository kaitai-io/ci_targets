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
    let rawDifWoHack = io.readBytes(int(12))
    result.rawDifWoHack = rawDifWoHack
    let rawDifWoHackIo = newKaitaiStringStream(rawDifWoHack)
    let difWoHack = TermStrz.read(rawDifWoHackIo)
    result.difWoHack = difWoHack
  if isHack:
    let rawRawDifWithHack = io.readBytes(int(12))
    result.rawRawDifWithHack = rawRawDifWithHack
    let rawDifWithHack = rawRawDifWithHack.processXor(3)
    result.rawDifWithHack = rawDifWithHack
    let rawDifWithHackIo = newKaitaiStringStream(rawDifWithHack)
    let difWithHack = TermStrz.read(rawDifWithHackIo)
    result.difWithHack = difWithHack

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)


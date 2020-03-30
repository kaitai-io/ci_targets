import kaitai_struct_nim_runtime
import options

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
    isHackInst*: Option[bool]
    difInst*: Option[TermStrz]

## TypeTernaryOpaque
proc isHack*(this: TypeTernaryOpaque): bool
proc dif*(this: TypeTernaryOpaque): TermStrz
proc isHack(this: TypeTernaryOpaque): bool = 
  if isSome(this.isHackInst):
    return get(this.isHackInst)
  this.isHackInst = some(false)
  return get(this.isHackInst)

proc dif(this: TypeTernaryOpaque): TermStrz = 
  if isSome(this.difInst):
    return get(this.difInst)
  this.difInst = some((if not(this.isHack): this.difWoHack else: this.difWithHack))
  return get(this.difInst)

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): TypeTernaryOpaque =
  let this = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    this.rawDifWoHack = this.io.readBytes(int(12))
    let rawDifWoHackIo = newKaitaiStringStream(this.rawDifWoHack)
    this.difWoHack = TermStrz.read(rawDifWoHackIo)
  if this.isHack:
    this.rawRawDifWithHack = this.io.readBytes(int(12))
    this.rawDifWithHack = rawRawDifWithHack.processXor(3)
    let rawDifWithHackIo = newKaitaiStringStream(this.rawDifWithHack)
    this.difWithHack = TermStrz.read(rawDifWithHackIo)
  result = this

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)


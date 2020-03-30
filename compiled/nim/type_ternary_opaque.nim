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

### TypeTernaryOpaque ###
proc isHack*(this: TypeTernaryOpaque): bool
proc dif*(this: TypeTernaryOpaque): TermStrz
proc isHack(this: TypeTernaryOpaque): bool = 
  if isSome(this.isHackInst):
    return get(this.isHackInst)
  let isHackInst = false
  this.isHackInst = some(isHackInst)
  return get(this.isHackInst)

proc dif(this: TypeTernaryOpaque): TermStrz = 
  if isSome(this.difInst):
    return get(this.difInst)
  let difInst = (if not(this.isHack): this.difWoHack else: this.difWithHack)
  this.difInst = some(difInst)
  return get(this.difInst)

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): TypeTernaryOpaque =
  let this = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    let rawDifWoHack = this.io.readBytes(int(12))
    this.rawDifWoHack = rawDifWoHack
    let rawDifWoHackIo = newKaitaiStringStream(rawDifWoHack)
    let difWoHack = TermStrz.read(rawDifWoHackIo)
    this.difWoHack = difWoHack
  if this.isHack:
    let rawRawDifWithHack = this.io.readBytes(int(12))
    this.rawRawDifWithHack = rawRawDifWithHack
    let rawDifWithHack = rawRawDifWithHack.processXor(3)
    this.rawDifWithHack = rawDifWithHack
    let rawDifWithHackIo = newKaitaiStringStream(rawDifWithHack)
    let difWithHack = TermStrz.read(rawDifWithHackIo)
    this.difWithHack = difWithHack
  result = this

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)


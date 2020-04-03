import kaitai_struct_nim_runtime
import options

import "term_strz"
template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  TypeTernaryOpaque* = ref object of KaitaiStruct
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    parent*: KaitaiStruct
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string
    isHackInst*: Option[bool]
    difInst*: Option[TermStrz]

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque

proc isHack*(this: TypeTernaryOpaque): bool
proc dif*(this: TypeTernaryOpaque): TermStrz

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque =
  template this: untyped = result
  this = new(TypeTernaryOpaque)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    this.rawDifWoHack = this.io.readBytes(int(12))
    let rawDifWoHackIo = newKaitaiStringStream(this.rawDifWoHack)
    this.difWoHack = TermStrz.read(rawDifWoHackIo, this.root, this)
  if this.isHack:
    this.rawRawDifWithHack = this.io.readBytes(int(12))
    this.rawDifWithHack = rawRawDifWithHack.processXor(3)
    let rawDifWithHackIo = newKaitaiStringStream(this.rawDifWithHack)
    this.difWithHack = TermStrz.read(rawDifWithHackIo, this.root, this)

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

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)


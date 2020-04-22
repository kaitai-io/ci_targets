import kaitai_struct_nim_runtime
import options

import "term_strz"
type
  TypeTernaryOpaque* = ref object of KaitaiStruct
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    parent*: KaitaiStruct
    rawDifWoHack*: seq[byte]
    rawDifWithHack*: seq[byte]
    rawRawDifWithHack*: seq[byte]
    isHackInst*: Option[bool]
    difInst*: Option[TermStrz]

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque

proc isHack*(this: TypeTernaryOpaque): bool
proc dif*(this: TypeTernaryOpaque): TermStrz

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque =
  template this: untyped = result
  this = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](this) else: cast[TypeTernaryOpaque](root)
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    let rawDifWoHackExpr = this.io.readBytes(int(12))
    this.rawDifWoHack = rawDifWoHackExpr
    let rawDifWoHackIo = newKaitaiStream(rawDifWoHackExpr)
    let difWoHackExpr = TermStrz.read(rawDifWoHackIo, this.root, this)
    this.difWoHack = difWoHackExpr
  if this.isHack:
    let rawRawDifWithHackExpr = this.io.readBytes(int(12))
    this.rawRawDifWithHack = rawRawDifWithHackExpr
    let rawDifWithHackExpr = this.rawRawDifWithHack.processXor(3)
    this.rawDifWithHack = rawDifWithHackExpr
    let rawDifWithHackIo = newKaitaiStream(rawDifWithHackExpr)
    let difWithHackExpr = TermStrz.read(rawDifWithHackIo, this.root, this)
    this.difWithHack = difWithHackExpr

proc isHack(this: TypeTernaryOpaque): bool = 
  if isSome(this.isHackInst):
    return get(this.isHackInst)
  let isHackInstExpr = bool(false)
  this.isHackInst = isHackInstExpr
  if isSome(this.isHackInst):
    return get(this.isHackInst)

proc dif(this: TypeTernaryOpaque): TermStrz = 
  if isSome(this.difInst):
    return get(this.difInst)
  let difInstExpr = TermStrz((if not(this.isHack): this.difWoHack else: this.difWithHack))
  this.difInst = difInstExpr
  if isSome(this.difInst):
    return get(this.difInst)

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)


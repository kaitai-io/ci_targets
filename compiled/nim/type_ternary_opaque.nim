import kaitai_struct_nim_runtime
import options

import "term_strz"
type
  TypeTernaryOpaque* = ref object of KaitaiStruct
    `difWoHack`*: TermStrz
    `difWithHack`*: TermStrz
    `parent`*: KaitaiStruct
    `rawDifWoHack`*: seq[byte]
    `rawDifWithHack`*: seq[byte]
    `rawRawDifWithHack`*: seq[byte]
    `difInst`: TermStrz
    `difInstFlag`: bool
    `isHackInst`: bool
    `isHackInstFlag`: bool

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque

proc dif*(this: TypeTernaryOpaque): TermStrz
proc isHack*(this: TypeTernaryOpaque): bool

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
    let difWoHackExpr = TermStrz.read(rawDifWoHackIo, nil, nil)
    this.difWoHack = difWoHackExpr
  if this.isHack:
    let rawRawDifWithHackExpr = this.io.readBytes(int(12))
    this.rawRawDifWithHack = rawRawDifWithHackExpr
    let rawDifWithHackExpr = this.rawRawDifWithHack.processXor(3)
    this.rawDifWithHack = rawDifWithHackExpr
    let rawDifWithHackIo = newKaitaiStream(rawDifWithHackExpr)
    let difWithHackExpr = TermStrz.read(rawDifWithHackIo, nil, nil)
    this.difWithHack = difWithHackExpr

proc dif(this: TypeTernaryOpaque): TermStrz = 
  if this.difInstFlag:
    return this.difInst
  let difInstExpr = TermStrz((if not(this.isHack): this.difWoHack else: this.difWithHack))
  this.difInst = difInstExpr
  this.difInstFlag = true
  return this.difInst

proc isHack(this: TypeTernaryOpaque): bool = 
  if this.isHackInstFlag:
    return this.isHackInst
  let isHackInstExpr = bool(false)
  this.isHackInst = isHackInstExpr
  this.isHackInstFlag = true
  return this.isHackInst

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiFileStream(filename), nil, nil)


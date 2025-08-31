import kaitai_struct_nim_runtime
import options
import hello_world

type
  TypeTernaryOpaque* = ref object of KaitaiStruct
    `difWoHack`*: HelloWorld
    `difWithHack`*: HelloWorld
    `parent`*: KaitaiStruct
    `rawDifWoHack`*: seq[byte]
    `rawDifWithHack`*: seq[byte]
    `rawRawDifWithHack`*: seq[byte]
    `difInst`: HelloWorld
    `difInstFlag`: bool
    `isHackInst`: bool
    `isHackInstFlag`: bool

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque

proc dif*(this: TypeTernaryOpaque): HelloWorld
proc isHack*(this: TypeTernaryOpaque): bool

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernaryOpaque =
  template this: untyped = result
  this = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](this) else: cast[TypeTernaryOpaque](root)
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    let rawDifWoHackExpr = this.io.readBytes(int(1))
    this.rawDifWoHack = rawDifWoHackExpr
    let rawDifWoHackIo = newKaitaiStream(rawDifWoHackExpr)
    let difWoHackExpr = HelloWorld.read(rawDifWoHackIo, nil, nil)
    this.difWoHack = difWoHackExpr
  if this.isHack:
    let rawRawDifWithHackExpr = this.io.readBytes(int(1))
    this.rawRawDifWithHack = rawRawDifWithHackExpr
    let rawDifWithHackExpr = this.rawRawDifWithHack.processXor(3)
    this.rawDifWithHack = rawDifWithHackExpr
    let rawDifWithHackIo = newKaitaiStream(rawDifWithHackExpr)
    let difWithHackExpr = HelloWorld.read(rawDifWithHackIo, nil, nil)
    this.difWithHack = difWithHackExpr

proc dif(this: TypeTernaryOpaque): HelloWorld = 
  if this.difInstFlag:
    return this.difInst
  let difInstExpr = HelloWorld((if not(this.isHack): this.difWoHack else: this.difWithHack))
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


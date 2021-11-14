import kaitai_struct_nim_runtime
import options

type
  YamlInts* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `testU4DecInst`: int
    `testU4DecInstFlag`: bool
    `testU4HexInst`: int
    `testU4HexInstFlag`: bool
    `testU8DecInst`: int
    `testU8DecInstFlag`: bool
    `testU8HexInst`: int
    `testU8HexInstFlag`: bool

proc read*(_: typedesc[YamlInts], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): YamlInts

proc testU4Dec*(this: YamlInts): int
proc testU4Hex*(this: YamlInts): int
proc testU8Dec*(this: YamlInts): int
proc testU8Hex*(this: YamlInts): int

proc read*(_: typedesc[YamlInts], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): YamlInts =
  template this: untyped = result
  this = new(YamlInts)
  let root = if root == nil: cast[YamlInts](this) else: cast[YamlInts](root)
  this.io = io
  this.root = root
  this.parent = parent


proc testU4Dec(this: YamlInts): int = 
  if this.testU4DecInstFlag:
    return this.testU4DecInst
  let testU4DecInstExpr = int(4294967295'i64)
  this.testU4DecInst = testU4DecInstExpr
  this.testU4DecInstFlag = true
  return this.testU4DecInst

proc testU4Hex(this: YamlInts): int = 
  if this.testU4HexInstFlag:
    return this.testU4HexInst
  let testU4HexInstExpr = int(4294967295'i64)
  this.testU4HexInst = testU4HexInstExpr
  this.testU4HexInstFlag = true
  return this.testU4HexInst

proc testU8Dec(this: YamlInts): int = 
  if this.testU8DecInstFlag:
    return this.testU8DecInst
  let testU8DecInstExpr = int(18446744073709551615'u64)
  this.testU8DecInst = testU8DecInstExpr
  this.testU8DecInstFlag = true
  return this.testU8DecInst

proc testU8Hex(this: YamlInts): int = 
  if this.testU8HexInstFlag:
    return this.testU8HexInst
  let testU8HexInstExpr = int(18446744073709551615'u64)
  this.testU8HexInst = testU8HexInstExpr
  this.testU8HexInstFlag = true
  return this.testU8HexInst

proc fromFile*(_: typedesc[YamlInts], filename: string): YamlInts =
  YamlInts.read(newKaitaiFileStream(filename), nil, nil)


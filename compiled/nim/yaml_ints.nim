import kaitai_struct_nim_runtime
import options

type
  YamlInts* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `testU4DecInst`*: int
    `testU4HexInst`*: int
    `testU8DecInst`*: int
    `testU8HexInst`*: int

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
  if this.testU4DecInst != nil:
    return this.testU4DecInst
  let testU4DecInstExpr = int(4294967295'i64)
  this.testU4DecInst = testU4DecInstExpr
  if this.testU4DecInst != nil:
    return this.testU4DecInst

proc testU4Hex(this: YamlInts): int = 
  if this.testU4HexInst != nil:
    return this.testU4HexInst
  let testU4HexInstExpr = int(4294967295'i64)
  this.testU4HexInst = testU4HexInstExpr
  if this.testU4HexInst != nil:
    return this.testU4HexInst

proc testU8Dec(this: YamlInts): int = 
  if this.testU8DecInst != nil:
    return this.testU8DecInst
  let testU8DecInstExpr = int(18446744073709551615'u64)
  this.testU8DecInst = testU8DecInstExpr
  if this.testU8DecInst != nil:
    return this.testU8DecInst

proc testU8Hex(this: YamlInts): int = 
  if this.testU8HexInst != nil:
    return this.testU8HexInst
  let testU8HexInstExpr = int(18446744073709551615'u64)
  this.testU8HexInst = testU8HexInstExpr
  if this.testU8HexInst != nil:
    return this.testU8HexInst

proc fromFile*(_: typedesc[YamlInts], filename: string): YamlInts =
  YamlInts.read(newKaitaiFileStream(filename), nil, nil)


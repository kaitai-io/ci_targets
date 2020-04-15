import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  YamlInts* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    testU4DecInst*: Option[int]
    testU4HexInst*: Option[int]
    testU8DecInst*: Option[int]
    testU8HexInst*: Option[int]

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
  if isSome(this.testU4DecInst):
    return get(this.testU4DecInst)
  let testU4DecInstExpr = int(4294967295'i64)
  this.testU4DecInst = testU4DecInstExpr
  if isSome(this.testU4DecInst):
    return get(this.testU4DecInst)

proc testU4Hex(this: YamlInts): int = 
  if isSome(this.testU4HexInst):
    return get(this.testU4HexInst)
  let testU4HexInstExpr = int(4294967295'i64)
  this.testU4HexInst = testU4HexInstExpr
  if isSome(this.testU4HexInst):
    return get(this.testU4HexInst)

proc testU8Dec(this: YamlInts): int = 
  if isSome(this.testU8DecInst):
    return get(this.testU8DecInst)
  let testU8DecInstExpr = int(18446744073709551615'u64)
  this.testU8DecInst = testU8DecInstExpr
  if isSome(this.testU8DecInst):
    return get(this.testU8DecInst)

proc testU8Hex(this: YamlInts): int = 
  if isSome(this.testU8HexInst):
    return get(this.testU8HexInst)
  let testU8HexInstExpr = int(18446744073709551615'u64)
  this.testU8HexInst = testU8HexInstExpr
  if isSome(this.testU8HexInst):
    return get(this.testU8HexInst)

proc fromFile*(_: typedesc[YamlInts], filename: string): YamlInts =
  YamlInts.read(newKaitaiFileStream(filename), nil, nil)


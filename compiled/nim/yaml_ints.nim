import kaitai_struct_nim_runtime
import options

type
  YamlInts* = ref YamlIntsObj
  YamlIntsObj* = object
    io*: KaitaiStream
    root*: YamlInts
    parent*: ref RootObj
    testU4DecInst*: Option[int]
    testU4HexInst*: Option[int]
    testU8DecInst*: Option[int]
    testU8HexInst*: Option[int]

### YamlInts ###
proc testU4Dec*(this: YamlInts): int
proc testU4Hex*(this: YamlInts): int
proc testU8Dec*(this: YamlInts): int
proc testU8Hex*(this: YamlInts): int
proc testU4Dec(this: YamlInts): int = 
  if isSome(this.testU4DecInst):
    return get(this.testU4DecInst)
  let testU4DecInst = 4294967295'u32
  this.testU4DecInst = some(testU4DecInst)
  return get(this.testU4DecInst)

proc testU4Hex(this: YamlInts): int = 
  if isSome(this.testU4HexInst):
    return get(this.testU4HexInst)
  let testU4HexInst = 4294967295'u32
  this.testU4HexInst = some(testU4HexInst)
  return get(this.testU4HexInst)

proc testU8Dec(this: YamlInts): int = 
  if isSome(this.testU8DecInst):
    return get(this.testU8DecInst)
  let testU8DecInst = 18446744073709551615'u64
  this.testU8DecInst = some(testU8DecInst)
  return get(this.testU8DecInst)

proc testU8Hex(this: YamlInts): int = 
  if isSome(this.testU8HexInst):
    return get(this.testU8HexInst)
  let testU8HexInst = 18446744073709551615'u64
  this.testU8HexInst = some(testU8HexInst)
  return get(this.testU8HexInst)

proc read*(_: typedesc[YamlInts], io: KaitaiStream, root: YamlInts, parent: ref RootObj): YamlInts =
  let this = new(YamlInts)
  let root = if root == nil: cast[YamlInts](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[YamlInts], filename: string): YamlInts =
  YamlInts.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var YamlIntsObj) =
  close(x.io)


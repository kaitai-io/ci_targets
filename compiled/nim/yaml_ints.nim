import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  YamlInts* = ref YamlIntsObj
  YamlIntsObj* = object
    io: KaitaiStream
    root*: YamlInts
    parent*: ref RootObj
    testU4DecInst: proc(): int
    testU4HexInst: proc(): int
    testU8DecInst: proc(): int
    testU8HexInst: proc(): int

# YamlInts
template `.`*(a: YamlInts, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[YamlInts], io: KaitaiStream, root: YamlInts, parent: ref RootObj): owned YamlInts =
  result = new(YamlInts)
  let root = if root == nil: cast[YamlInts](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  var testU4DecVal: Option[int]
  let testU4Dec = proc(): int =
    if isNone(testU4DecVal):
      testU4DecVal = some(int(4294967295'u32))
    get(testU4DecVal)
  result.testU4DecInst = testU4Dec
  var testU4HexVal: Option[int]
  let testU4Hex = proc(): int =
    if isNone(testU4HexVal):
      testU4HexVal = some(int(4294967295'u32))
    get(testU4HexVal)
  result.testU4HexInst = testU4Hex
  var testU8DecVal: Option[int]
  let testU8Dec = proc(): int =
    if isNone(testU8DecVal):
      testU8DecVal = some(int(18446744073709551615'u64))
    get(testU8DecVal)
  result.testU8DecInst = testU8Dec
  var testU8HexVal: Option[int]
  let testU8Hex = proc(): int =
    if isNone(testU8HexVal):
      testU8HexVal = some(int(18446744073709551615'u64))
    get(testU8HexVal)
  result.testU8HexInst = testU8Hex

proc fromFile*(_: typedesc[YamlInts], filename: string): owned YamlInts =
  YamlInts.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var YamlIntsObj) =
  close(x.io)


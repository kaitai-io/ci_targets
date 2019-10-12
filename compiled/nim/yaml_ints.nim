import ../../runtime/nim/kaitai
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


  let shadow = result
  var testU4Dec: Option[int]
  result.testU4DecInst = proc(): int =
    if isNone(testU4Dec):
      testU4Dec = some(int(4294967295'u32))
    get(testU4Dec)
  var testU4Hex: Option[int]
  result.testU4HexInst = proc(): int =
    if isNone(testU4Hex):
      testU4Hex = some(int(4294967295'u32))
    get(testU4Hex)
  var testU8Dec: Option[int]
  result.testU8DecInst = proc(): int =
    if isNone(testU8Dec):
      testU8Dec = some(int(18446744073709551615'u64))
    get(testU8Dec)
  var testU8Hex: Option[int]
  result.testU8HexInst = proc(): int =
    if isNone(testU8Hex):
      testU8Hex = some(int(18446744073709551615'u64))
    get(testU8Hex)

proc fromFile*(_: typedesc[YamlInts], filename: string): owned YamlInts =
  YamlInts.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var YamlIntsObj) =
  close(x.io)


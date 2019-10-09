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


proc fromFile*(_: typedesc[YamlInts], filename: string): owned YamlInts =
  YamlInts.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var YamlIntsObj) =
  close(x.io)


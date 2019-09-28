# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  TypeTernary* = ref object
    difWoHack*: Dummy
    difWithHack*: Dummy
    root*: TypeTernary
    parent*: ref RootObj
    raw_difWoHack*: seq[byte]
    raw_difWithHack*: seq[byte]
    raw_raw_difWithHack*: seq[byte]
    isHack*: Option[bool]
    dif*: Option[Dummy]
    difValue*: Option[uint8]
  Dummy* = ref object
    value*: uint8
    root*: TypeTernary
    parent*: TypeTernary

proc read*(_: typedesc[Dummy], stream: KaitaiStream, root: TypeTernary, parent: TypeTernary): owned Dummy =
  result = new(Dummy)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.value = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Dummy], filename: string): owned Dummy =
  var stream = newKaitaiStream(filename)
  Dummy.read(stream, nil, nil)

proc read*(_: typedesc[TypeTernary], stream: KaitaiStream, root: TypeTernary, parent: ref RootObj): owned TypeTernary =
  result = new(TypeTernary)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.difWoHack = Dummy.read(stream, root, result)
  result.difWithHack = Dummy.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeTernary], filename: string): owned TypeTernary =
  var stream = newKaitaiStream(filename)
  TypeTernary.read(stream, nil, nil)

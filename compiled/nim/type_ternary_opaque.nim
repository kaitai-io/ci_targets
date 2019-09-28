# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  TypeTernaryOpaque* = ref object
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    root*: TypeTernaryOpaque
    parent*: ref RootObj
    raw_difWoHack*: seq[byte]
    raw_difWithHack*: seq[byte]
    raw_raw_difWithHack*: seq[byte]
    isHack*: Option[bool]
    dif*: Option[TermStrz]

proc read*(_: typedesc[TypeTernaryOpaque], stream: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): owned TypeTernaryOpaque =
  result = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](result) else: root
  result.difWoHack = TermStrz.read(stream)
  result.difWithHack = TermStrz.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): owned TypeTernaryOpaque =
  var stream = newKaitaiStream(filename)
  TypeTernaryOpaque.read(stream, nil, nil)

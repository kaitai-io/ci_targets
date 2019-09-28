# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  DocstringsDocref* = ref object
    one*: uint8
    two*: uint8
    three*: uint8
    root*: DocstringsDocref
    parent*: ref RootObj
    foo*: Option[bool]
    parseInst*: Option[uint8]

proc read*(_: typedesc[DocstringsDocref], stream: KaitaiStream, root: DocstringsDocref, parent: ref RootObj): owned DocstringsDocref =
  result = new(DocstringsDocref)
  let root = if root == nil: cast[DocstringsDocref](result) else: root
  result.one = readU1(stream)
  result.two = readU1(stream)
  result.three = readU1(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): owned DocstringsDocref =
  var stream = newKaitaiStream(filename)
  DocstringsDocref.read(stream, nil, nil)

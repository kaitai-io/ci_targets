# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  CastToImported* = ref object
    one*: HelloWorld
    root*: CastToImported
    parent*: ref RootObj
    oneCasted*: Option[HelloWorld]

proc read*(_: typedesc[CastToImported], stream: KaitaiStream, root: CastToImported, parent: ref RootObj): owned CastToImported =
  result = new(CastToImported)
  let root = if root == nil: cast[CastToImported](result) else: root
  result.one = HelloWorld.read(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[CastToImported], filename: string): owned CastToImported =
  var stream = newKaitaiStream(filename)
  CastToImported.read(stream, nil, nil)

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DefaultEndianMod* = ref object
    main*: MainObj
    root*: DefaultEndianMod
    parent*: ref RootObj
DefaultEndianModmainObj* = ref object
  one*: int32
  nest*: Subnest
  nestBe*: SubnestBe
  root*: DefaultEndianMod
  parent*: DefaultEndianMod
DefaultEndianModmainObjsubnest* = ref object
two*: int32
root*: DefaultEndianMod
parent*: DefaultEndianMod_MainObj
DefaultEndianModmainObjsubnestBe* = ref object
two*: int32
root*: DefaultEndianMod
parent*: DefaultEndianMod_MainObj

proc read*(_: typedesc[DefaultEndianMod], stream: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): owned DefaultEndianMod =
result = new(DefaultEndianMod)
let root = if root == nil: result else: root
result.main = readUserTypeInstream(List(main_obj),None,List())(stream)
result.root = root
result.parent = parent

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): owned DefaultEndianMod =
var stream = newKaitaiStream(filename)
DefaultEndianMod.read(stream, nil, nil)

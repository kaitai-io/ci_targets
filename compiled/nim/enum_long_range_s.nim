import kaitai_struct_nim_runtime

type
  EnumLongRangeS* = ref EnumLongRangeSObj
  EnumLongRangeSObj* = object
    f1*: Constants
    f2*: Constants
    f3*: Constants
    f4*: Constants
    f5*: Constants
    f6*: Constants
    f7*: Constants
    io*: KaitaiStream
    root*: EnumLongRangeS
    parent*: ref RootObj

### EnumLongRangeS ###
proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: EnumLongRangeS, parent: ref RootObj): EnumLongRangeS =
  result = new(EnumLongRangeS)
  let root = if root == nil: cast[EnumLongRangeS](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.f1 = 
  result.f2 = 
  result.f3 = 
  result.f4 = 
  result.f5 = 
  result.f6 = 
  result.f7 = 

proc fromFile*(_: typedesc[EnumLongRangeS], filename: string): EnumLongRangeS =
  EnumLongRangeS.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumLongRangeSObj) =
  close(x.io)


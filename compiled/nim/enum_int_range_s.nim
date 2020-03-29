import kaitai_struct_nim_runtime

type
  EnumIntRangeS* = ref EnumIntRangeSObj
  EnumIntRangeSObj* = object
    f1*: Constants
    f2*: Constants
    f3*: Constants
    io*: KaitaiStream
    root*: EnumIntRangeS
    parent*: ref RootObj

### EnumIntRangeS ###
proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: EnumIntRangeS, parent: ref RootObj): EnumIntRangeS =
  result = new(EnumIntRangeS)
  let root = if root == nil: cast[EnumIntRangeS](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let f1 = 
  result.f1 = f1
  let f2 = 
  result.f2 = f2
  let f3 = 
  result.f3 = f3

proc fromFile*(_: typedesc[EnumIntRangeS], filename: string): EnumIntRangeS =
  EnumIntRangeS.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumIntRangeSObj) =
  close(x.io)


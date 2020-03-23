import kaitai_struct_nim_runtime

type
  MultipleUsemulti* = ref MultipleUsemultiObj
  MultipleUsemultiObj* = object
    t1*: Type1
    t2*: Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
  MultipleUsetype1* = ref MultipleUsetype1Obj
  MultipleUsetype1Obj* = object
    t1*: Type1
    t2*: Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
  MultipleUsetype2* = ref MultipleUsetype2Obj
  MultipleUsetype2Obj* = object
    t1*: Type1
    t2*: Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
  MultipleUse* = ref MultipleUseObj
  MultipleUseObj* = object
    t1*: Type1
    t2*: Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj

### MultipleUsemulti ###
proc read*(_: typedesc[MultipleUsemulti], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUsemulti =
  result = new(MultipleUsemulti)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readS4le()

proc fromFile*(_: typedesc[MultipleUsemulti], filename: string): MultipleUsemulti =
  MultipleUsemulti.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUsemultiObj) =
  close(x.io)

### MultipleUsetype1 ###
proc read*(_: typedesc[MultipleUsetype1], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUsetype1 =
  result = new(MultipleUsetype1)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.firstUse = Multi.read(result.io, result, root)

proc fromFile*(_: typedesc[MultipleUsetype1], filename: string): MultipleUsetype1 =
  MultipleUsetype1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUsetype1Obj) =
  close(x.io)

### MultipleUsetype2 ###
proc read*(_: typedesc[MultipleUsetype2], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUsetype2 =
  result = new(MultipleUsetype2)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MultipleUsetype2], filename: string): MultipleUsetype2 =
  MultipleUsetype2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUsetype2Obj) =
  close(x.io)

### MultipleUse ###
proc read*(_: typedesc[MultipleUse], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUse =
  result = new(MultipleUse)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.t1 = Type1.read(result.io, result, root)
  result.t2 = Type2.read(result.io, result, root)

proc fromFile*(_: typedesc[MultipleUse], filename: string): MultipleUse =
  MultipleUse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUseObj) =
  close(x.io)


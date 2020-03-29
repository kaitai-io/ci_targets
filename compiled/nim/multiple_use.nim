import kaitai_struct_nim_runtime

type
  MultipleUse_Multi* = ref MultipleUse_MultiObj
  MultipleUse_MultiObj* = object
    value*: int32
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
  MultipleUse_Type1* = ref MultipleUse_Type1Obj
  MultipleUse_Type1Obj* = object
    firstUse*: MultipleUse_Multi
    io*: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
  MultipleUse_Type2* = ref MultipleUse_Type2Obj
  MultipleUse_Type2Obj* = object
    io*: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
  MultipleUse* = ref MultipleUseObj
  MultipleUseObj* = object
    t1*: MultipleUse_Type1
    t2*: MultipleUse_Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj

### MultipleUse_Multi ###
proc read*(_: typedesc[MultipleUse_Multi], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUse_Multi =
  result = new(MultipleUse_Multi)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readS4le()
  result.value = value

proc fromFile*(_: typedesc[MultipleUse_Multi], filename: string): MultipleUse_Multi =
  MultipleUse_Multi.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_MultiObj) =
  close(x.io)

### MultipleUse_Type1 ###
proc read*(_: typedesc[MultipleUse_Type1], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUse_Type1 =
  result = new(MultipleUse_Type1)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let firstUse = MultipleUse_Multi.read(io, result, root)
  result.firstUse = firstUse

proc fromFile*(_: typedesc[MultipleUse_Type1], filename: string): MultipleUse_Type1 =
  MultipleUse_Type1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_Type1Obj) =
  close(x.io)

### MultipleUse_Type2 ###
proc read*(_: typedesc[MultipleUse_Type2], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUse_Type2 =
  result = new(MultipleUse_Type2)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MultipleUse_Type2], filename: string): MultipleUse_Type2 =
  MultipleUse_Type2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_Type2Obj) =
  close(x.io)

### MultipleUse ###
proc read*(_: typedesc[MultipleUse], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUse =
  result = new(MultipleUse)
  let root = if root == nil: cast[MultipleUse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let t1 = MultipleUse_Type1.read(io, result, root)
  result.t1 = t1
  let t2 = MultipleUse_Type2.read(io, result, root)
  result.t2 = t2

proc fromFile*(_: typedesc[MultipleUse], filename: string): MultipleUse =
  MultipleUse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUseObj) =
  close(x.io)


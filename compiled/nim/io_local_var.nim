import kaitai_struct_nim_runtime

type
  IoLocalVar_Dummy* = ref IoLocalVar_DummyObj
  IoLocalVar_DummyObj* = object
    io*: KaitaiStream
    root*: IoLocalVar
    parent*: IoLocalVar
  IoLocalVar* = ref IoLocalVarObj
  IoLocalVarObj* = object
    skip*: string
    alwaysNull*: uint8
    followup*: uint8
    io*: KaitaiStream
    root*: IoLocalVar
    parent*: ref RootObj
    rawMessUpInst*: string

### IoLocalVar_Dummy ###
proc read*(_: typedesc[IoLocalVar_Dummy], io: KaitaiStream, root: IoLocalVar, parent: IoLocalVar): IoLocalVar_Dummy =
  result = new(IoLocalVar_Dummy)
  let root = if root == nil: cast[IoLocalVar](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IoLocalVar_Dummy], filename: string): IoLocalVar_Dummy =
  IoLocalVar_Dummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IoLocalVar_DummyObj) =
  close(x.io)

### IoLocalVar ###
proc read*(_: typedesc[IoLocalVar], io: KaitaiStream, root: IoLocalVar, parent: ref RootObj): IoLocalVar =
  result = new(IoLocalVar)
  let root = if root == nil: cast[IoLocalVar](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let skip = io.readBytes(int(20))
  result.skip = skip
  if messUp.stream.pos < 0:
    let alwaysNull = io.readU1()
    result.alwaysNull = alwaysNull
  let followup = io.readU1()
  result.followup = followup

proc fromFile*(_: typedesc[IoLocalVar], filename: string): IoLocalVar =
  IoLocalVar.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IoLocalVarObj) =
  close(x.io)


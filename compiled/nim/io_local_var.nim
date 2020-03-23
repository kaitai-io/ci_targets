import kaitai_struct_nim_runtime

type
  IoLocalVardummy* = ref IoLocalVardummyObj
  IoLocalVardummyObj* = object
    skip*: string
    alwaysNull*: uint8
    followup*: uint8
    io*: KaitaiStream
    root*: IoLocalVar
    parent*: ref RootObj
    rawMessUpInst*: string
  IoLocalVar* = ref IoLocalVarObj
  IoLocalVarObj* = object
    skip*: string
    alwaysNull*: uint8
    followup*: uint8
    io*: KaitaiStream
    root*: IoLocalVar
    parent*: ref RootObj
    rawMessUpInst*: string

### IoLocalVardummy ###
proc read*(_: typedesc[IoLocalVardummy], io: KaitaiStream, root: IoLocalVar, parent: IoLocalVar): IoLocalVardummy =
  result = new(IoLocalVardummy)
  let root = if root == nil: cast[IoLocalVar](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[IoLocalVardummy], filename: string): IoLocalVardummy =
  IoLocalVardummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IoLocalVardummyObj) =
  close(x.io)

### IoLocalVar ###
proc read*(_: typedesc[IoLocalVar], io: KaitaiStream, root: IoLocalVar, parent: ref RootObj): IoLocalVar =
  result = new(IoLocalVar)
  let root = if root == nil: cast[IoLocalVar](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.skip = result.io.readBytes(20)
  if messUp.stream.pos < 0:
    result.alwaysNull = result.io.readU1()
  result.followup = result.io.readU1()

proc fromFile*(_: typedesc[IoLocalVar], filename: string): IoLocalVar =
  IoLocalVar.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IoLocalVarObj) =
  close(x.io)


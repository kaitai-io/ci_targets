import kaitai_struct_nim_runtime

type
  InstanceStd* = ref InstanceStdObj
  InstanceStdObj* = object
    io*: KaitaiStream
    root*: InstanceStd
    parent*: ref RootObj

### InstanceStd ###
proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: InstanceStd, parent: ref RootObj): InstanceStd =
  result = new(InstanceStd)
  let root = if root == nil: cast[InstanceStd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[InstanceStd], filename: string): InstanceStd =
  InstanceStd.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceStdObj) =
  close(x.io)


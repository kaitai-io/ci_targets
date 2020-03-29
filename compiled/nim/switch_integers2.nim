import kaitai_struct_nim_runtime

type
  SwitchIntegers2* = ref SwitchIntegers2Obj
  SwitchIntegers2Obj* = object
    code*: uint8
    len*: uint64
    ham*: string
    padding*: uint8
    io*: KaitaiStream
    root*: SwitchIntegers2
    parent*: ref RootObj

### SwitchIntegers2 ###
proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: SwitchIntegers2, parent: ref RootObj): SwitchIntegers2 =
  result = new(SwitchIntegers2)
  let root = if root == nil: cast[SwitchIntegers2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let len = uint64(io.readU1())
  result.len = len
  let len = uint64(io.readU2le())
  result.len = len
  let len = uint64(io.readU4le())
  result.len = len
  let len = io.readU8le()
  result.len = len
  let ham = io.readBytes(int(len))
  result.ham = ham
  if len > 3:
    let padding = io.readU1()
    result.padding = padding

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegers2Obj) =
  close(x.io)


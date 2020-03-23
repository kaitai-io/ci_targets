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
  result.code = result.io.readU1()
  result.len = uint64(result.io.readU1())
  result.len = uint64(result.io.readU2le())
  result.len = uint64(result.io.readU4le())
  result.len = result.io.readU8le()
  result.ham = result.io.readBytes(len)
  if len > 3:
    result.padding = result.io.readU1()

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegers2Obj) =
  close(x.io)


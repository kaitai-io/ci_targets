import kaitai_struct_nim_runtime

type
  ValidSwitch* = ref ValidSwitchObj
  ValidSwitchObj* = object
    a*: uint8
    b*: int
    io*: KaitaiStream
    root*: ValidSwitch
    parent*: ref RootObj

### ValidSwitch ###
proc read*(_: typedesc[ValidSwitch], io: KaitaiStream, root: ValidSwitch, parent: ref RootObj): ValidSwitch =
  result = new(ValidSwitch)
  let root = if root == nil: cast[ValidSwitch](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readU1()
  result.a = a
  let b = int(io.readU2le())
  result.b = b
  let b = int(io.readU2be())
  result.b = b

proc fromFile*(_: typedesc[ValidSwitch], filename: string): ValidSwitch =
  ValidSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidSwitchObj) =
  close(x.io)


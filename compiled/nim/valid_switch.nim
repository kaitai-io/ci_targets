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
  result.a = result.io.readU1()
  result.b = int(result.io.readU2le())
  result.b = int(result.io.readU2be())

proc fromFile*(_: typedesc[ValidSwitch], filename: string): ValidSwitch =
  ValidSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidSwitchObj) =
  close(x.io)


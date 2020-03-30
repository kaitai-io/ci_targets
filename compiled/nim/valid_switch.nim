import kaitai_struct_nim_runtime
import options

type
  ValidSwitch* = ref ValidSwitchObj
  ValidSwitchObj* = object
    a*: uint8
    b*: int
    io*: KaitaiStream
    root*: ValidSwitch
    parent*: ref RootObj

## ValidSwitch
proc read*(_: typedesc[ValidSwitch], io: KaitaiStream, root: ValidSwitch, parent: ref RootObj): ValidSwitch =
  let this = new(ValidSwitch)
  let root = if root == nil: cast[ValidSwitch](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  case this.a
  of 80:
    this.b = int(this.io.readU2le())
  else:
  this.b = int(this.io.readU2be())
result = this

proc fromFile*(_: typedesc[ValidSwitch], filename: string): ValidSwitch =
ValidSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidSwitchObj) =
close(x.io)


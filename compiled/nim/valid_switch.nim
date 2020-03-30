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

### ValidSwitch ###
proc read*(_: typedesc[ValidSwitch], io: KaitaiStream, root: ValidSwitch, parent: ref RootObj): ValidSwitch =
  let this = new(ValidSwitch)
  let root = if root == nil: cast[ValidSwitch](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let a = this.io.readU1()
  this.a = a
  let b = int(this.io.readU2le())
  this.b = b
  let b = int(this.io.readU2be())
  this.b = b
  result = this

proc fromFile*(_: typedesc[ValidSwitch], filename: string): ValidSwitch =
  ValidSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidSwitchObj) =
  close(x.io)


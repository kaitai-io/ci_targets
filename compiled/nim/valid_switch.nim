import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidSwitch* = ref object of KaitaiStruct
    a*: uint8
    b*: int
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidSwitch], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidSwitch


proc read*(_: typedesc[ValidSwitch], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidSwitch =
  template this: untyped = result
  this = new(ValidSwitch)
  let root = if root == nil: cast[ValidSwitch](this) else: cast[ValidSwitch](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readU1()
  case ord(this.a)
  of 80:
    this.b = int(this.io.readU2le())
  else:
    this.b = int(this.io.readU2be())

proc fromFile*(_: typedesc[ValidSwitch], filename: string): ValidSwitch =
  ValidSwitch.read(newKaitaiFileStream(filename), nil, nil)


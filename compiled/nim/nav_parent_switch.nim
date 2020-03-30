import kaitai_struct_nim_runtime
import options

type
  NavParentSwitch_Element1* = ref NavParentSwitch_Element1Obj
  NavParentSwitch_Element1Obj* = object
    foo*: uint8
    subelement*: NavParentSwitch_Subelement1
    io*: KaitaiStream
    root*: NavParentSwitch
    parent*: NavParentSwitch
  NavParentSwitch_Subelement1* = ref NavParentSwitch_Subelement1Obj
  NavParentSwitch_Subelement1Obj* = object
    bar*: uint8
    io*: KaitaiStream
    root*: NavParentSwitch
    parent*: NavParentSwitch_Element1
  NavParentSwitch* = ref NavParentSwitchObj
  NavParentSwitchObj* = object
    category*: uint8
    content*: NavParentSwitch_Element1
    io*: KaitaiStream
    root*: NavParentSwitch
    parent*: ref RootObj

## NavParentSwitch_Element1
proc read*(_: typedesc[NavParentSwitch_Element1], io: KaitaiStream, root: NavParentSwitch, parent: NavParentSwitch): NavParentSwitch_Element1 =
  let this = new(NavParentSwitch_Element1)
  let root = if root == nil: cast[NavParentSwitch](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()
  this.subelement = NavParentSwitch_Subelement1.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentSwitch_Element1], filename: string): NavParentSwitch_Element1 =
  NavParentSwitch_Element1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitch_Element1Obj) =
  close(x.io)

## NavParentSwitch_Subelement1
proc read*(_: typedesc[NavParentSwitch_Subelement1], io: KaitaiStream, root: NavParentSwitch, parent: NavParentSwitch_Element1): NavParentSwitch_Subelement1 =
  let this = new(NavParentSwitch_Subelement1)
  let root = if root == nil: cast[NavParentSwitch](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if this.parent.foo == 66:
    this.bar = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[NavParentSwitch_Subelement1], filename: string): NavParentSwitch_Subelement1 =
  NavParentSwitch_Subelement1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitch_Subelement1Obj) =
  close(x.io)

## NavParentSwitch
proc read*(_: typedesc[NavParentSwitch], io: KaitaiStream, root: NavParentSwitch, parent: ref RootObj): NavParentSwitch =
  let this = new(NavParentSwitch)
  let root = if root == nil: cast[NavParentSwitch](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.category = this.io.readU1()
  case this.category
  of 1:
    this.content = NavParentSwitch_Element1.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavParentSwitch], filename: string): NavParentSwitch =
  NavParentSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchObj) =
  close(x.io)


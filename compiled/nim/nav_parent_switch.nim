import kaitai_struct_nim_runtime
import options

type
  NavParentSwitch* = ref object of KaitaiStruct
    category*: uint8
    content*: NavParentSwitch_Element1
    parent*: KaitaiStruct
  NavParentSwitch_Element1* = ref object of KaitaiStruct
    foo*: uint8
    subelement*: NavParentSwitch_Subelement1
    parent*: NavParentSwitch
  NavParentSwitch_Subelement1* = ref object of KaitaiStruct
    bar*: uint8
    parent*: NavParentSwitch_Element1

proc read*(_: typedesc[NavParentSwitch_Element1], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitch): NavParentSwitch_Element1 =
  template this: untyped = result
  this = new(NavParentSwitch_Element1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.foo = this.io.readU1()

  ##[
  ]##
  this.subelement = NavParentSwitch_Subelement1.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentSwitch_Element1], filename: string): NavParentSwitch_Element1 =
  NavParentSwitch_Element1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitch_Subelement1], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitch_Element1): NavParentSwitch_Subelement1 =
  template this: untyped = result
  this = new(NavParentSwitch_Subelement1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  if this.parent.foo == 66:
    this.bar = this.io.readU1()

proc fromFile*(_: typedesc[NavParentSwitch_Subelement1], filename: string): NavParentSwitch_Subelement1 =
  NavParentSwitch_Subelement1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitch], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentSwitch =
  template this: untyped = result
  this = new(NavParentSwitch)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.category = this.io.readU1()

  ##[
  ]##
  case this.category
  of 1:
    this.content = NavParentSwitch_Element1.read(this.io, this.root, this)

proc fromFile*(_: typedesc[NavParentSwitch], filename: string): NavParentSwitch =
  NavParentSwitch.read(newKaitaiFileStream(filename), nil, nil)


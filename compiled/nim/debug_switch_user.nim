import kaitai_struct_nim_runtime
import options

type
  DebugSwitchUser* = ref object of KaitaiStruct
    `code`*: uint8
    `data`*: KaitaiStruct
    `parent`*: KaitaiStruct
  DebugSwitchUser_One* = ref object of KaitaiStruct
    `val`*: int16
    `parent`*: DebugSwitchUser
  DebugSwitchUser_Two* = ref object of KaitaiStruct
    `val`*: uint16
    `parent`*: DebugSwitchUser

proc read*(_: typedesc[DebugSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugSwitchUser
proc read*(_: typedesc[DebugSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_One
proc read*(_: typedesc[DebugSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_Two


proc read*(_: typedesc[DebugSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugSwitchUser =
  template this: untyped = result
  this = new(DebugSwitchUser)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 1:
      let dataExpr = DebugSwitchUser_One.read(this.io, this.root, this)
      this.data = dataExpr
    elif on == 2:
      let dataExpr = DebugSwitchUser_Two.read(this.io, this.root, this)
      this.data = dataExpr

proc fromFile*(_: typedesc[DebugSwitchUser], filename: string): DebugSwitchUser =
  DebugSwitchUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_One =
  template this: untyped = result
  this = new(DebugSwitchUser_One)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valExpr = this.io.readS2le()
  this.val = valExpr

proc fromFile*(_: typedesc[DebugSwitchUser_One], filename: string): DebugSwitchUser_One =
  DebugSwitchUser_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: DebugSwitchUser): DebugSwitchUser_Two =
  template this: untyped = result
  this = new(DebugSwitchUser_Two)
  let root = if root == nil: cast[DebugSwitchUser](this) else: cast[DebugSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valExpr = this.io.readU2le()
  this.val = valExpr

proc fromFile*(_: typedesc[DebugSwitchUser_Two], filename: string): DebugSwitchUser_Two =
  DebugSwitchUser_Two.read(newKaitaiFileStream(filename), nil, nil)


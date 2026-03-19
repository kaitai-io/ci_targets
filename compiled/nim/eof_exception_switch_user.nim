import kaitai_struct_nim_runtime
import options

type
  EofExceptionSwitchUser* = ref object of KaitaiStruct
    `code`*: uint16
    `data`*: KaitaiStruct
    `parent`*: KaitaiStruct
  EofExceptionSwitchUser_One* = ref object of KaitaiStruct
    `val`*: int16
    `parent`*: EofExceptionSwitchUser
  EofExceptionSwitchUser_Two* = ref object of KaitaiStruct
    `val`*: uint16
    `parent`*: EofExceptionSwitchUser

proc read*(_: typedesc[EofExceptionSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionSwitchUser
proc read*(_: typedesc[EofExceptionSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSwitchUser): EofExceptionSwitchUser_One
proc read*(_: typedesc[EofExceptionSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSwitchUser): EofExceptionSwitchUser_Two


proc read*(_: typedesc[EofExceptionSwitchUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionSwitchUser =
  template this: untyped = result
  this = new(EofExceptionSwitchUser)
  let root = if root == nil: cast[EofExceptionSwitchUser](this) else: cast[EofExceptionSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU2le()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 2:
      let dataExpr = EofExceptionSwitchUser_Two.read(this.io, this.root, this)
      this.data = dataExpr
    elif on == 511:
      let dataExpr = EofExceptionSwitchUser_One.read(this.io, this.root, this)
      this.data = dataExpr

proc fromFile*(_: typedesc[EofExceptionSwitchUser], filename: string): EofExceptionSwitchUser =
  EofExceptionSwitchUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EofExceptionSwitchUser_One], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSwitchUser): EofExceptionSwitchUser_One =
  template this: untyped = result
  this = new(EofExceptionSwitchUser_One)
  let root = if root == nil: cast[EofExceptionSwitchUser](this) else: cast[EofExceptionSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valExpr = this.io.readS2le()
  this.val = valExpr

proc fromFile*(_: typedesc[EofExceptionSwitchUser_One], filename: string): EofExceptionSwitchUser_One =
  EofExceptionSwitchUser_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EofExceptionSwitchUser_Two], io: KaitaiStream, root: KaitaiStruct, parent: EofExceptionSwitchUser): EofExceptionSwitchUser_Two =
  template this: untyped = result
  this = new(EofExceptionSwitchUser_Two)
  let root = if root == nil: cast[EofExceptionSwitchUser](this) else: cast[EofExceptionSwitchUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valExpr = this.io.readU2le()
  this.val = valExpr

proc fromFile*(_: typedesc[EofExceptionSwitchUser_Two], filename: string): EofExceptionSwitchUser_Two =
  EofExceptionSwitchUser_Two.read(newKaitaiFileStream(filename), nil, nil)


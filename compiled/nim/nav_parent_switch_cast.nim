import kaitai_struct_nim_runtime
import options

type
  NavParentSwitchCast* = ref object of KaitaiStruct
    main*: NavParentSwitchCast_Foo
    parent*: KaitaiStruct
  NavParentSwitchCast_Foo* = ref object of KaitaiStruct
    bufType*: uint8
    flag*: uint8
    buf*: KaitaiStruct
    parent*: NavParentSwitchCast
    rawBuf*: seq[byte]
  NavParentSwitchCast_Foo_Zero* = ref object of KaitaiStruct
    branch*: NavParentSwitchCast_Foo_Common
    parent*: NavParentSwitchCast_Foo
  NavParentSwitchCast_Foo_One* = ref object of KaitaiStruct
    branch*: NavParentSwitchCast_Foo_Common
    parent*: NavParentSwitchCast_Foo
  NavParentSwitchCast_Foo_Common* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    flagInst*: Option[uint8]

proc read*(_: typedesc[NavParentSwitchCast], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentSwitchCast
proc read*(_: typedesc[NavParentSwitchCast_Foo], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast): NavParentSwitchCast_Foo
proc read*(_: typedesc[NavParentSwitchCast_Foo_Zero], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast_Foo): NavParentSwitchCast_Foo_Zero
proc read*(_: typedesc[NavParentSwitchCast_Foo_One], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast_Foo): NavParentSwitchCast_Foo_One
proc read*(_: typedesc[NavParentSwitchCast_Foo_Common], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentSwitchCast_Foo_Common

proc flag*(this: NavParentSwitchCast_Foo_Common): uint8

proc read*(_: typedesc[NavParentSwitchCast], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentSwitchCast =
  template this: untyped = result
  this = new(NavParentSwitchCast)
  let root = if root == nil: cast[NavParentSwitchCast](this) else: cast[NavParentSwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainExpr = NavParentSwitchCast_Foo.read(this.io, this.root, this)
  this.main = mainExpr

proc fromFile*(_: typedesc[NavParentSwitchCast], filename: string): NavParentSwitchCast =
  NavParentSwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitchCast_Foo], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast): NavParentSwitchCast_Foo =
  template this: untyped = result
  this = new(NavParentSwitchCast_Foo)
  let root = if root == nil: cast[NavParentSwitchCast](this) else: cast[NavParentSwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bufTypeExpr = this.io.readU1()
  this.bufType = bufTypeExpr
  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  block:
    let on = this.bufType
    if on == 0:
      let rawBufExpr = this.io.readBytes(int(4))
      this.rawBuf = rawBufExpr
      let rawBufIo = newKaitaiStream(rawBufExpr)
      let bufExpr = NavParentSwitchCast_Foo_Zero.read(rawBufIo, this.root, this)
      this.buf = bufExpr
    elif on == 1:
      let rawBufExpr = this.io.readBytes(int(4))
      this.rawBuf = rawBufExpr
      let rawBufIo = newKaitaiStream(rawBufExpr)
      let bufExpr = NavParentSwitchCast_Foo_One.read(rawBufIo, this.root, this)
      this.buf = bufExpr
    else:
      let bufExpr = this.io.readBytes(int(4))
      this.buf = bufExpr

proc fromFile*(_: typedesc[NavParentSwitchCast_Foo], filename: string): NavParentSwitchCast_Foo =
  NavParentSwitchCast_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitchCast_Foo_Zero], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast_Foo): NavParentSwitchCast_Foo_Zero =
  template this: untyped = result
  this = new(NavParentSwitchCast_Foo_Zero)
  let root = if root == nil: cast[NavParentSwitchCast](this) else: cast[NavParentSwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let branchExpr = NavParentSwitchCast_Foo_Common.read(this.io, this.root, this)
  this.branch = branchExpr

proc fromFile*(_: typedesc[NavParentSwitchCast_Foo_Zero], filename: string): NavParentSwitchCast_Foo_Zero =
  NavParentSwitchCast_Foo_Zero.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitchCast_Foo_One], io: KaitaiStream, root: KaitaiStruct, parent: NavParentSwitchCast_Foo): NavParentSwitchCast_Foo_One =
  template this: untyped = result
  this = new(NavParentSwitchCast_Foo_One)
  let root = if root == nil: cast[NavParentSwitchCast](this) else: cast[NavParentSwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent

  let branchExpr = NavParentSwitchCast_Foo_Common.read(this.io, this.root, this)
  this.branch = branchExpr

proc fromFile*(_: typedesc[NavParentSwitchCast_Foo_One], filename: string): NavParentSwitchCast_Foo_One =
  NavParentSwitchCast_Foo_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParentSwitchCast_Foo_Common], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParentSwitchCast_Foo_Common =
  template this: untyped = result
  this = new(NavParentSwitchCast_Foo_Common)
  let root = if root == nil: cast[NavParentSwitchCast](this) else: cast[NavParentSwitchCast](root)
  this.io = io
  this.root = root
  this.parent = parent


proc flag(this: NavParentSwitchCast_Foo_Common): uint8 = 
  if isSome(this.flagInst):
    return get(this.flagInst)
  let flagInstExpr = uint8((NavParentSwitchCast_Foo(this.parent.parent)).flag)
  this.flagInst = flagInstExpr
  if isSome(this.flagInst):
    return get(this.flagInst)

proc fromFile*(_: typedesc[NavParentSwitchCast_Foo_Common], filename: string): NavParentSwitchCast_Foo_Common =
  NavParentSwitchCast_Foo_Common.read(newKaitaiFileStream(filename), nil, nil)


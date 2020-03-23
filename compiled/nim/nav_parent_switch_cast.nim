import kaitai_struct_nim_runtime

type
  NavParentSwitchCastfoozero* = ref NavParentSwitchCastfoozeroObj
  NavParentSwitchCastfoozeroObj* = object
    foo*: Foo
    io*: KaitaiStream
    root*: NavParentSwitchCast
    parent*: ref RootObj
  NavParentSwitchCastfooone* = ref NavParentSwitchCastfoooneObj
  NavParentSwitchCastfoooneObj* = object
    foo*: Foo
    io*: KaitaiStream
    root*: NavParentSwitchCast
    parent*: ref RootObj
  NavParentSwitchCastfoobar* = ref NavParentSwitchCastfoobarObj
  NavParentSwitchCastfoobarObj* = object
    foo*: Foo
    io*: KaitaiStream
    root*: NavParentSwitchCast
    parent*: ref RootObj
  NavParentSwitchCastfoo* = ref NavParentSwitchCastfooObj
  NavParentSwitchCastfooObj* = object
    foo*: Foo
    io*: KaitaiStream
    root*: NavParentSwitchCast
    parent*: ref RootObj
  NavParentSwitchCast* = ref NavParentSwitchCastObj
  NavParentSwitchCastObj* = object
    foo*: Foo
    io*: KaitaiStream
    root*: NavParentSwitchCast
    parent*: ref RootObj

### NavParentSwitchCastfoozero ###
proc read*(_: typedesc[NavParentSwitchCastfoozero], io: KaitaiStream, root: NavParentSwitchCast, parent: NavParentSwitchCastfoo): NavParentSwitchCastfoozero =
  result = new(NavParentSwitchCastfoozero)
  let root = if root == nil: cast[NavParentSwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.bar = Bar.read(result.io, result, root)

proc fromFile*(_: typedesc[NavParentSwitchCastfoozero], filename: string): NavParentSwitchCastfoozero =
  NavParentSwitchCastfoozero.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchCastfoozeroObj) =
  close(x.io)

### NavParentSwitchCastfooone ###
proc read*(_: typedesc[NavParentSwitchCastfooone], io: KaitaiStream, root: NavParentSwitchCast, parent: NavParentSwitchCastfoo): NavParentSwitchCastfooone =
  result = new(NavParentSwitchCastfooone)
  let root = if root == nil: cast[NavParentSwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.bar = Bar.read(result.io, result, root)

proc fromFile*(_: typedesc[NavParentSwitchCastfooone], filename: string): NavParentSwitchCastfooone =
  NavParentSwitchCastfooone.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchCastfoooneObj) =
  close(x.io)

### NavParentSwitchCastfoobar ###
proc read*(_: typedesc[NavParentSwitchCastfoobar], io: KaitaiStream, root: NavParentSwitchCast, parent: ref RootObj): NavParentSwitchCastfoobar =
  result = new(NavParentSwitchCastfoobar)
  let root = if root == nil: cast[NavParentSwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[NavParentSwitchCastfoobar], filename: string): NavParentSwitchCastfoobar =
  NavParentSwitchCastfoobar.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchCastfoobarObj) =
  close(x.io)

### NavParentSwitchCastfoo ###
proc read*(_: typedesc[NavParentSwitchCastfoo], io: KaitaiStream, root: NavParentSwitchCast, parent: NavParentSwitchCast): NavParentSwitchCastfoo =
  result = new(NavParentSwitchCastfoo)
  let root = if root == nil: cast[NavParentSwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.bufType = result.io.readU1()
  result.flag = result.io.readU1()
  result.rawBuf = result.io.readBytes(4)
  rawBufIo = newKaitaiStringStream(rawBuf)
  result.buf = Zero.read(rawBufIo, result, root)
  result.rawBuf = result.io.readBytes(4)
  rawBufIo = newKaitaiStringStream(rawBuf)
  result.buf = One.read(rawBufIo, result, root)
  result.buf = result.io.readBytes(4)

proc fromFile*(_: typedesc[NavParentSwitchCastfoo], filename: string): NavParentSwitchCastfoo =
  NavParentSwitchCastfoo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchCastfooObj) =
  close(x.io)

### NavParentSwitchCast ###
proc read*(_: typedesc[NavParentSwitchCast], io: KaitaiStream, root: NavParentSwitchCast, parent: ref RootObj): NavParentSwitchCast =
  result = new(NavParentSwitchCast)
  let root = if root == nil: cast[NavParentSwitchCast](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = Foo.read(result.io, result, root)

proc fromFile*(_: typedesc[NavParentSwitchCast], filename: string): NavParentSwitchCast =
  NavParentSwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentSwitchCastObj) =
  close(x.io)


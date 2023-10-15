import kaitai_struct_nim_runtime
import options

type
  SwitchRepeatExprInvalid* = ref object of KaitaiStruct
    `code`*: uint8
    `size`*: uint32
    `body`*: seq[KaitaiStruct]
    `parent`*: KaitaiStruct
    `rawBody`*: seq[seq[byte]]
  SwitchRepeatExprInvalid_One* = ref object of KaitaiStruct
    `first`*: seq[byte]
    `parent`*: SwitchRepeatExprInvalid
  SwitchRepeatExprInvalid_Two* = ref object of KaitaiStruct
    `second`*: seq[byte]
    `parent`*: SwitchRepeatExprInvalid

proc read*(_: typedesc[SwitchRepeatExprInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchRepeatExprInvalid
proc read*(_: typedesc[SwitchRepeatExprInvalid_One], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExprInvalid): SwitchRepeatExprInvalid_One
proc read*(_: typedesc[SwitchRepeatExprInvalid_Two], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExprInvalid): SwitchRepeatExprInvalid_Two


proc read*(_: typedesc[SwitchRepeatExprInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchRepeatExprInvalid =
  template this: untyped = result
  this = new(SwitchRepeatExprInvalid)
  let root = if root == nil: cast[SwitchRepeatExprInvalid](this) else: cast[SwitchRepeatExprInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  let sizeExpr = this.io.readU4le()
  this.size = sizeExpr
  for i in 0 ..< int(1):
    block:
      let on = this.code
      if on == 255:
        let buf = this.io.readBytes(int(this.size))
        this.rawBody.add(buf)
        let rawBodyIo = newKaitaiStream(buf)
        let it = SwitchRepeatExprInvalid_One.read(rawBodyIo, this.root, this)
        this.body.add(it)
      elif on == 34:
        let buf = this.io.readBytes(int(this.size))
        this.rawBody.add(buf)
        let rawBodyIo = newKaitaiStream(buf)
        let it = SwitchRepeatExprInvalid_Two.read(rawBodyIo, this.root, this)
        this.body.add(it)
      else:
        let it = this.io.readBytes(int(this.size))
        this.body.add(it)

proc fromFile*(_: typedesc[SwitchRepeatExprInvalid], filename: string): SwitchRepeatExprInvalid =
  SwitchRepeatExprInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchRepeatExprInvalid_One], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExprInvalid): SwitchRepeatExprInvalid_One =
  template this: untyped = result
  this = new(SwitchRepeatExprInvalid_One)
  let root = if root == nil: cast[SwitchRepeatExprInvalid](this) else: cast[SwitchRepeatExprInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  let firstExpr = this.io.readBytesFull()
  this.first = firstExpr

proc fromFile*(_: typedesc[SwitchRepeatExprInvalid_One], filename: string): SwitchRepeatExprInvalid_One =
  SwitchRepeatExprInvalid_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchRepeatExprInvalid_Two], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExprInvalid): SwitchRepeatExprInvalid_Two =
  template this: untyped = result
  this = new(SwitchRepeatExprInvalid_Two)
  let root = if root == nil: cast[SwitchRepeatExprInvalid](this) else: cast[SwitchRepeatExprInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  let secondExpr = this.io.readBytesFull()
  this.second = secondExpr

proc fromFile*(_: typedesc[SwitchRepeatExprInvalid_Two], filename: string): SwitchRepeatExprInvalid_Two =
  SwitchRepeatExprInvalid_Two.read(newKaitaiFileStream(filename), nil, nil)


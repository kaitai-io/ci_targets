import kaitai_struct_nim_runtime
import options

type
  SwitchRepeatExpr* = ref object of KaitaiStruct
    code*: uint8
    size*: uint32
    body*: seq[any]
    parent*: KaitaiStruct
    rawBody*: seq[seq[byte]]
  SwitchRepeatExpr_One* = ref object of KaitaiStruct
    first*: seq[byte]
    parent*: SwitchRepeatExpr
  SwitchRepeatExpr_Two* = ref object of KaitaiStruct
    second*: seq[byte]
    parent*: SwitchRepeatExpr

proc read*(_: typedesc[SwitchRepeatExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchRepeatExpr
proc read*(_: typedesc[SwitchRepeatExpr_One], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExpr): SwitchRepeatExpr_One
proc read*(_: typedesc[SwitchRepeatExpr_Two], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExpr): SwitchRepeatExpr_Two


proc read*(_: typedesc[SwitchRepeatExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchRepeatExpr =
  template this: untyped = result
  this = new(SwitchRepeatExpr)
  let root = if root == nil: cast[SwitchRepeatExpr](this) else: cast[SwitchRepeatExpr](root)
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
      if on == 17:
        let buf = this.io.readBytes(int(this.size))
        this.rawBody.add(buf)
        let rawBodyIo = newKaitaiStream(buf)
        let it = SwitchRepeatExpr_One.read(rawBodyIo, this.root, this)
        this.body.add(it)
      elif on == 34:
        let buf = this.io.readBytes(int(this.size))
        this.rawBody.add(buf)
        let rawBodyIo = newKaitaiStream(buf)
        let it = SwitchRepeatExpr_Two.read(rawBodyIo, this.root, this)
        this.body.add(it)
      else:
        let it = this.io.readBytes(int(this.size))
        this.body.add(it)

proc fromFile*(_: typedesc[SwitchRepeatExpr], filename: string): SwitchRepeatExpr =
  SwitchRepeatExpr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchRepeatExpr_One], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExpr): SwitchRepeatExpr_One =
  template this: untyped = result
  this = new(SwitchRepeatExpr_One)
  let root = if root == nil: cast[SwitchRepeatExpr](this) else: cast[SwitchRepeatExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let firstExpr = this.io.readBytesFull()
  this.first = firstExpr

proc fromFile*(_: typedesc[SwitchRepeatExpr_One], filename: string): SwitchRepeatExpr_One =
  SwitchRepeatExpr_One.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchRepeatExpr_Two], io: KaitaiStream, root: KaitaiStruct, parent: SwitchRepeatExpr): SwitchRepeatExpr_Two =
  template this: untyped = result
  this = new(SwitchRepeatExpr_Two)
  let root = if root == nil: cast[SwitchRepeatExpr](this) else: cast[SwitchRepeatExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let secondExpr = this.io.readBytesFull()
  this.second = secondExpr

proc fromFile*(_: typedesc[SwitchRepeatExpr_Two], filename: string): SwitchRepeatExpr_Two =
  SwitchRepeatExpr_Two.read(newKaitaiFileStream(filename), nil, nil)


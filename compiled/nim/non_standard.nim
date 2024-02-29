import kaitai_struct_nim_runtime
import options

type
  NonStandard* = ref object of KaitaiStruct
    `foo`*: uint8
    `bar`*: uint32
    `parent`*: KaitaiStruct
    `piInst`: uint8
    `piInstFlag`: bool
    `viInst`: uint8
    `viInstFlag`: bool

proc read*(_: typedesc[NonStandard], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NonStandard

proc pi*(this: NonStandard): uint8
proc vi*(this: NonStandard): uint8

proc read*(_: typedesc[NonStandard], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NonStandard =
  template this: untyped = result
  this = new(NonStandard)
  let root = if root == nil: cast[NonStandard](this) else: cast[NonStandard](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr
  block:
    let on = this.foo
    if on == 42:
      let barExpr = uint32(this.io.readU2le())
      this.bar = barExpr
    elif on == 43:
      let barExpr = this.io.readU4le()
      this.bar = barExpr

proc pi(this: NonStandard): uint8 = 
  if this.piInstFlag:
    return this.piInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let piInstExpr = this.io.readU1()
  this.piInst = piInstExpr
  this.io.seek(pos)
  this.piInstFlag = true
  return this.piInst

proc vi(this: NonStandard): uint8 = 
  if this.viInstFlag:
    return this.viInst
  let viInstExpr = uint8(this.foo)
  this.viInst = viInstExpr
  this.viInstFlag = true
  return this.viInst

proc fromFile*(_: typedesc[NonStandard], filename: string): NonStandard =
  NonStandard.read(newKaitaiFileStream(filename), nil, nil)


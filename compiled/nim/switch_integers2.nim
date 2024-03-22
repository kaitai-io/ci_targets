import kaitai_struct_nim_runtime
import options
import strutils

type
  SwitchIntegers2* = ref object of KaitaiStruct
    `code`*: uint8
    `len`*: uint64
    `ham`*: seq[byte]
    `padding`*: uint8
    `parent`*: KaitaiStruct
    `lenModStrInst`: string
    `lenModStrInstFlag`: bool

proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers2

proc lenModStr*(this: SwitchIntegers2): string

proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers2 =
  template this: untyped = result
  this = new(SwitchIntegers2)
  let root = if root == nil: cast[SwitchIntegers2](this) else: cast[SwitchIntegers2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 1:
      let lenExpr = uint64(this.io.readU1())
      this.len = lenExpr
    elif on == 2:
      let lenExpr = uint64(this.io.readU2le())
      this.len = lenExpr
    elif on == 4:
      let lenExpr = uint64(this.io.readU4le())
      this.len = lenExpr
    elif on == 8:
      let lenExpr = this.io.readU8le()
      this.len = lenExpr
  let hamExpr = this.io.readBytes(int(this.len))
  this.ham = hamExpr
  if this.len > 3:
    let paddingExpr = this.io.readU1()
    this.padding = paddingExpr

proc lenModStr(this: SwitchIntegers2): string = 
  if this.lenModStrInstFlag:
    return this.lenModStrInst
  let lenModStrInstExpr = string(intToStr(int(this.len * 2 - 1)))
  this.lenModStrInst = lenModStrInstExpr
  this.lenModStrInstFlag = true
  return this.lenModStrInst

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)


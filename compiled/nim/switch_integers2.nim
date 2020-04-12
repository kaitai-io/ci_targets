import kaitai_struct_nim_runtime
import options
import strutils

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchIntegers2* = ref object of KaitaiStruct
    code*: uint8
    len*: uint64
    ham*: string
    padding*: uint8
    parent*: KaitaiStruct
    lenModStrInst*: string

proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers2

proc lenModStr*(this: SwitchIntegers2): string

proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers2 =
  template this: untyped = result
  this = new(SwitchIntegers2)
  let root = if root == nil: cast[SwitchIntegers2](this) else: cast[SwitchIntegers2](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  case ord(this.code)
  of 1:
    this.len = uint64(this.io.readU1())
  of 2:
    this.len = uint64(this.io.readU2le())
  of 4:
    this.len = uint64(this.io.readU4le())
  of 8:
    this.len = this.io.readU8le()
  else: discard
  this.ham = this.io.readBytes(int(this.len))
  if this.len > 3:
    this.padding = this.io.readU1()

proc lenModStr(this: SwitchIntegers2): string = 
  if this.lenModStrInst.len != 0:
    return this.lenModStrInst
  this.lenModStrInst = string(intToStr(((this.len * 2) - 1)))
  if this.lenModStrInst.len != 0:
    return this.lenModStrInst

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)


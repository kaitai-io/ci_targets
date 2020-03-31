import kaitai_struct_nim_runtime
import options
import strutils

type
  SwitchIntegers2* = ref object of KaitaiStruct
    code*: uint8
    len*: uint64
    ham*: string
    padding*: uint8
    parent*: KaitaiStruct
    lenModStrInst*: Option[string]

proc lenModStr*(this: SwitchIntegers2): string
proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers2 =
  template this: untyped = result
  this = new(SwitchIntegers2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.code = this.io.readU1()

  ##[
  ]##
  case this.code
  of 1:
    this.len = uint64(this.io.readU1())
  of 2:
    this.len = uint64(this.io.readU2le())
  of 4:
    this.len = uint64(this.io.readU4le())
  of 8:
    this.len = this.io.readU8le()

  ##[
  ]##
  this.ham = this.io.readBytes(int(this.len))

  ##[
  ]##
  if this.len > 3:
    this.padding = this.io.readU1()

proc lenModStr(this: SwitchIntegers2): string = 
  if isSome(this.lenModStrInst):
    return get(this.lenModStrInst)
  this.lenModStrInst = some(intToStr(((this.len * 2) - 1)))
  return get(this.lenModStrInst)

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)


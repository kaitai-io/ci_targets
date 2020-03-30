import kaitai_struct_nim_runtime
import options
import strutils

type
  SwitchIntegers2* = ref SwitchIntegers2Obj
  SwitchIntegers2Obj* = object
    code*: uint8
    len*: uint64
    ham*: string
    padding*: uint8
    io*: KaitaiStream
    root*: SwitchIntegers2
    parent*: ref RootObj
    lenModStrInst*: Option[string]

### SwitchIntegers2 ###
proc lenModStr*(this: SwitchIntegers2): string
proc lenModStr(this: SwitchIntegers2): string = 
  if isSome(this.lenModStrInst):
    return get(this.lenModStrInst)
  let lenModStrInst = intToStr(((this.len * 2) - 1))
  this.lenModStrInst = some(lenModStrInst)
  return get(this.lenModStrInst)

proc read*(_: typedesc[SwitchIntegers2], io: KaitaiStream, root: SwitchIntegers2, parent: ref RootObj): SwitchIntegers2 =
  let this = new(SwitchIntegers2)
  let root = if root == nil: cast[SwitchIntegers2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readU1()
  this.code = code
  let len = uint64(this.io.readU1())
  this.len = len
  let len = uint64(this.io.readU2le())
  this.len = len
  let len = uint64(this.io.readU4le())
  this.len = len
  let len = this.io.readU8le()
  this.len = len
  let ham = this.io.readBytes(int(this.len))
  this.ham = ham
  if this.len > 3:
    let padding = this.io.readU1()
    this.padding = padding
  result = this

proc fromFile*(_: typedesc[SwitchIntegers2], filename: string): SwitchIntegers2 =
  SwitchIntegers2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegers2Obj) =
  close(x.io)


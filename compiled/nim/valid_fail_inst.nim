import kaitai_struct_nim_runtime
import options

type
  ValidFailInst* = ref ValidFailInstObj
  ValidFailInstObj* = object
    a*: uint8
    io*: KaitaiStream
    root*: ValidFailInst
    parent*: ref RootObj
    instInst*: Option[uint8]

### ValidFailInst ###
proc inst*(this: ValidFailInst): uint8
proc inst(this: ValidFailInst): uint8 = 
  if isSome(this.instInst):
    return get(this.instInst)
  let pos = this.io.pos()
  this.io.seek(5)
  let instInst = this.io.readU1()
  this.instInst = some(instInst)
  this.io.seek(pos)
  return get(this.instInst)

proc read*(_: typedesc[ValidFailInst], io: KaitaiStream, root: ValidFailInst, parent: ref RootObj): ValidFailInst =
  let this = new(ValidFailInst)
  let root = if root == nil: cast[ValidFailInst](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if this.inst >= 0:
    let a = this.io.readU1()
    this.a = a
  result = this

proc fromFile*(_: typedesc[ValidFailInst], filename: string): ValidFailInst =
  ValidFailInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailInstObj) =
  close(x.io)


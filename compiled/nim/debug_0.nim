import kaitai_struct_nim_runtime
import options

type
  Debug0* = ref Debug0Obj
  Debug0Obj* = object
    one*: uint8
    arrayOfInts*: seq[uint8]
    unnamed2*: uint8
    io*: KaitaiStream
    root*: Debug0
    parent*: ref RootObj

### Debug0 ###
proc read*(_: typedesc[Debug0], io: KaitaiStream, root: Debug0, parent: ref RootObj): Debug0 =
  let this = new(Debug0)
  let root = if root == nil: cast[Debug0](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  arrayOfInts = newSeq[uint8](3)
  for i in 0 ..< 3:
    this.arrayOfInts.add(this.io.readU1())
  let unnamed2 = this.io.readU1()
  this.unnamed2 = unnamed2
  result = this

proc fromFile*(_: typedesc[Debug0], filename: string): Debug0 =
  Debug0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Debug0Obj) =
  close(x.io)


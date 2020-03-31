import kaitai_struct_nim_runtime
import options

type
  Debug0* = ref object of KaitaiStruct
    one*: uint8
    arrayOfInts*: seq[uint8]
    unnamed2*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[Debug0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Debug0 =
  template this: untyped = result
  this = new(Debug0)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = this.io.readU1()

  ##[
  ]##
  arrayOfInts = newSeq[uint8](3)
  for i in 0 ..< 3:
    this.arrayOfInts.add(this.io.readU1())

  ##[
  ]##
  this.unnamed2 = this.io.readU1()

proc fromFile*(_: typedesc[Debug0], filename: string): Debug0 =
  Debug0.read(newKaitaiFileStream(filename), nil, nil)


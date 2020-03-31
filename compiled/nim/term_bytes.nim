import kaitai_struct_nim_runtime
import options

type
  TermBytes* = ref object of KaitaiStruct
    s1*: string
    s2*: string
    s3*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[TermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes =
  template this: untyped = result
  this = new(TermBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.s1 = this.io.readBytesTerm(124, false, true, true)

  ##[
  ]##
  this.s2 = this.io.readBytesTerm(124, false, false, true)

  ##[
  ]##
  this.s3 = this.io.readBytesTerm(64, true, true, true)

proc fromFile*(_: typedesc[TermBytes], filename: string): TermBytes =
  TermBytes.read(newKaitaiFileStream(filename), nil, nil)


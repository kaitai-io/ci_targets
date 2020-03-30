import kaitai_struct_nim_runtime
import options

type
  TermBytes* = ref TermBytesObj
  TermBytesObj* = object
    s1*: string
    s2*: string
    s3*: string
    io*: KaitaiStream
    root*: TermBytes
    parent*: ref RootObj

## TermBytes
proc read*(_: typedesc[TermBytes], io: KaitaiStream, root: TermBytes, parent: ref RootObj): TermBytes =
  let this = new(TermBytes)
  let root = if root == nil: cast[TermBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = this.io.readBytesTerm(124, false, true, true)
  this.s2 = this.io.readBytesTerm(124, false, false, true)
  this.s3 = this.io.readBytesTerm(64, true, true, true)
  result = this

proc fromFile*(_: typedesc[TermBytes], filename: string): TermBytes =
  TermBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TermBytesObj) =
  close(x.io)


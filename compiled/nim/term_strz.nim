import kaitai_struct_nim_runtime
import options
import encodings

type
  TermStrz* = ref TermStrzObj
  TermStrzObj* = object
    s1*: string
    s2*: string
    s3*: string
    io*: KaitaiStream
    root*: TermStrz
    parent*: ref RootObj

### TermStrz ###
proc read*(_: typedesc[TermStrz], io: KaitaiStream, root: TermStrz, parent: ref RootObj): TermStrz =
  let this = new(TermStrz)
  let root = if root == nil: cast[TermStrz](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let s1 = convert(this.io.readBytesTerm(124, false, true, true), srcEncoding = "UTF-8")
  this.s1 = s1
  let s2 = convert(this.io.readBytesTerm(124, false, false, true), srcEncoding = "UTF-8")
  this.s2 = s2
  let s3 = convert(this.io.readBytesTerm(64, true, true, true), srcEncoding = "UTF-8")
  this.s3 = s3
  result = this

proc fromFile*(_: typedesc[TermStrz], filename: string): TermStrz =
  TermStrz.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TermStrzObj) =
  close(x.io)


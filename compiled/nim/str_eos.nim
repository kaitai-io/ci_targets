import kaitai_struct_nim_runtime
import options
import encodings

type
  StrEos* = ref StrEosObj
  StrEosObj* = object
    str*: string
    io*: KaitaiStream
    root*: StrEos
    parent*: ref RootObj

## StrEos
proc read*(_: typedesc[StrEos], io: KaitaiStream, root: StrEos, parent: ref RootObj): StrEos =
  let this = new(StrEos)
  let root = if root == nil: cast[StrEos](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.str = convert(this.io.readBytesFull(), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[StrEos], filename: string): StrEos =
  StrEos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEosObj) =
  close(x.io)


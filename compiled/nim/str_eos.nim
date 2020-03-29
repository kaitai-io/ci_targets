import kaitai_struct_nim_runtime
import encodings

type
  StrEos* = ref StrEosObj
  StrEosObj* = object
    str*: string
    io*: KaitaiStream
    root*: StrEos
    parent*: ref RootObj

### StrEos ###
proc read*(_: typedesc[StrEos], io: KaitaiStream, root: StrEos, parent: ref RootObj): StrEos =
  result = new(StrEos)
  let root = if root == nil: cast[StrEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let str = convert(io.readBytesFull(), srcEncoding = "UTF-8")
  result.str = str

proc fromFile*(_: typedesc[StrEos], filename: string): StrEos =
  StrEos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEosObj) =
  close(x.io)


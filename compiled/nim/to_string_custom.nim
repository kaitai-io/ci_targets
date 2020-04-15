import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ToStringCustom* = ref object of KaitaiStruct
    s1*: string
    s2*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[ToStringCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ToStringCustom


proc read*(_: typedesc[ToStringCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ToStringCustom =
  template this: untyped = result
  this = new(ToStringCustom)
  let root = if root == nil: cast[ToStringCustom](this) else: cast[ToStringCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s2 = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")

proc fromFile*(_: typedesc[ToStringCustom], filename: string): ToStringCustom =
  ToStringCustom.read(newKaitaiFileStream(filename), nil, nil)


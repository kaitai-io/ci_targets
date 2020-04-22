import kaitai_struct_nim_runtime
import options

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

  let s1Expr = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s2 = s2Expr

proc fromFile*(_: typedesc[ToStringCustom], filename: string): ToStringCustom =
  ToStringCustom.read(newKaitaiFileStream(filename), nil, nil)


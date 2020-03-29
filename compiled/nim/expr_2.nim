import kaitai_struct_nim_runtime
import encodings

type
  Expr2_ModStr* = ref Expr2_ModStrObj
  Expr2_ModStrObj* = object
    lenOrig*: uint16
    str*: string
    rest*: Expr2_Tuple
    io*: KaitaiStream
    root*: Expr2
    parent*: Expr2
    rawRest*: string
  Expr2_Tuple* = ref Expr2_TupleObj
  Expr2_TupleObj* = object
    byte0*: uint8
    byte1*: uint8
    byte2*: uint8
    io*: KaitaiStream
    root*: Expr2
    parent*: Expr2_ModStr
  Expr2* = ref Expr2Obj
  Expr2Obj* = object
    str1*: Expr2_ModStr
    str2*: Expr2_ModStr
    io*: KaitaiStream
    root*: Expr2
    parent*: ref RootObj

### Expr2_ModStr ###
proc read*(_: typedesc[Expr2_ModStr], io: KaitaiStream, root: Expr2, parent: Expr2): Expr2_ModStr =
  result = new(Expr2_ModStr)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let lenOrig = io.readU2le()
  result.lenOrig = lenOrig
  let str = convert(io.readBytes(int(lenMod)), srcEncoding = "UTF-8")
  result.str = str
  let rawRest = io.readBytes(int(3))
  result.rawRest = rawRest
  let rawRestIo = newKaitaiStringStream(rawRest)
  let rest = Expr2_Tuple.read(rawRestIo, result, root)
  result.rest = rest

proc fromFile*(_: typedesc[Expr2_ModStr], filename: string): Expr2_ModStr =
  Expr2_ModStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2_ModStrObj) =
  close(x.io)

### Expr2_Tuple ###
proc read*(_: typedesc[Expr2_Tuple], io: KaitaiStream, root: Expr2, parent: Expr2_ModStr): Expr2_Tuple =
  result = new(Expr2_Tuple)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let byte0 = io.readU1()
  result.byte0 = byte0
  let byte1 = io.readU1()
  result.byte1 = byte1
  let byte2 = io.readU1()
  result.byte2 = byte2

proc fromFile*(_: typedesc[Expr2_Tuple], filename: string): Expr2_Tuple =
  Expr2_Tuple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2_TupleObj) =
  close(x.io)

### Expr2 ###
proc read*(_: typedesc[Expr2], io: KaitaiStream, root: Expr2, parent: ref RootObj): Expr2 =
  result = new(Expr2)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let str1 = Expr2_ModStr.read(io, result, root)
  result.str1 = str1
  let str2 = Expr2_ModStr.read(io, result, root)
  result.str2 = str2

proc fromFile*(_: typedesc[Expr2], filename: string): Expr2 =
  Expr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2Obj) =
  close(x.io)


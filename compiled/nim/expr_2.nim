import kaitai_struct_nim_runtime
import encodings

type
  Expr2modStr* = ref Expr2modStrObj
  Expr2modStrObj* = object
    str1*: ModStr
    str2*: ModStr
    io*: KaitaiStream
    root*: Expr2
    parent*: ref RootObj
  Expr2tuple* = ref Expr2tupleObj
  Expr2tupleObj* = object
    str1*: ModStr
    str2*: ModStr
    io*: KaitaiStream
    root*: Expr2
    parent*: ref RootObj
  Expr2* = ref Expr2Obj
  Expr2Obj* = object
    str1*: ModStr
    str2*: ModStr
    io*: KaitaiStream
    root*: Expr2
    parent*: ref RootObj

### Expr2modStr ###
proc read*(_: typedesc[Expr2modStr], io: KaitaiStream, root: Expr2, parent: Expr2): Expr2modStr =
  result = new(Expr2modStr)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.lenOrig = result.io.readU2le()
  result.str = convert(result.io.readBytes(lenMod), srcEncoding = "UTF-8")
  result.rawRest = result.io.readBytes(3)
  rawRestIo = newKaitaiStringStream(rawRest)
  result.rest = Tuple.read(rawRestIo, result, root)

proc fromFile*(_: typedesc[Expr2modStr], filename: string): Expr2modStr =
  Expr2modStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2modStrObj) =
  close(x.io)

### Expr2tuple ###
proc read*(_: typedesc[Expr2tuple], io: KaitaiStream, root: Expr2, parent: Expr2modStr): Expr2tuple =
  result = new(Expr2tuple)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.byte0 = result.io.readU1()
  result.byte1 = result.io.readU1()
  result.byte2 = result.io.readU1()

proc fromFile*(_: typedesc[Expr2tuple], filename: string): Expr2tuple =
  Expr2tuple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2tupleObj) =
  close(x.io)

### Expr2 ###
proc read*(_: typedesc[Expr2], io: KaitaiStream, root: Expr2, parent: ref RootObj): Expr2 =
  result = new(Expr2)
  let root = if root == nil: cast[Expr2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.str1 = ModStr.read(result.io, result, root)
  result.str2 = ModStr.read(result.io, result, root)

proc fromFile*(_: typedesc[Expr2], filename: string): Expr2 =
  Expr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2Obj) =
  close(x.io)


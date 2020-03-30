import kaitai_struct_nim_runtime
import options
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
    lenModInst*: Option[int]
    char5Inst*: Option[string]
    tuple5Inst*: Option[Expr2_Tuple]
  Expr2_Tuple* = ref Expr2_TupleObj
  Expr2_TupleObj* = object
    byte0*: uint8
    byte1*: uint8
    byte2*: uint8
    io*: KaitaiStream
    root*: Expr2
    parent*: Expr2_ModStr
    avgInst*: Option[int]
  Expr2* = ref Expr2Obj
  Expr2Obj* = object
    str1*: Expr2_ModStr
    str2*: Expr2_ModStr
    io*: KaitaiStream
    root*: Expr2
    parent*: ref RootObj
    str1LenModInst*: Option[int]
    str1LenInst*: Option[int]
    str1Tuple5Inst*: Option[Expr2_Tuple]
    str2Tuple5Inst*: Option[Expr2_Tuple]
    str1AvgInst*: Option[int]
    str1Byte1Inst*: Option[uint8]
    str1Char5Inst*: Option[string]

## Expr2_ModStr
proc lenMod*(this: Expr2_ModStr): int
proc char5*(this: Expr2_ModStr): string
proc tuple5*(this: Expr2_ModStr): Expr2_Tuple
proc lenMod(this: Expr2_ModStr): int = 
  if isSome(this.lenModInst):
    return get(this.lenModInst)
  this.lenModInst = some((this.lenOrig - 3))
  return get(this.lenModInst)

proc char5(this: Expr2_ModStr): string = 
  if isSome(this.char5Inst):
    return get(this.char5Inst)
  let pos = this.io.pos()
  this.io.seek(5)
  this.char5Inst = some(convert(this.io.readBytes(int(1)), srcEncoding = "ASCII"))
  this.io.seek(pos)
  return get(this.char5Inst)

proc tuple5(this: Expr2_ModStr): Expr2_Tuple = 
  if isSome(this.tuple5Inst):
    return get(this.tuple5Inst)
  let pos = this.io.pos()
  this.io.seek(5)
  this.tuple5Inst = some(Expr2_Tuple.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.tuple5Inst)

proc read*(_: typedesc[Expr2_ModStr], io: KaitaiStream, root: Expr2, parent: Expr2): Expr2_ModStr =
  let this = new(Expr2_ModStr)
  let root = if root == nil: cast[Expr2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOrig = this.io.readU2le()
  this.str = convert(this.io.readBytes(int(this.lenMod)), srcEncoding = "UTF-8")
  this.rawRest = this.io.readBytes(int(3))
  let rawRestIo = newKaitaiStringStream(this.rawRest)
  this.rest = Expr2_Tuple.read(rawRestIo, this.root, this)
  result = this

proc fromFile*(_: typedesc[Expr2_ModStr], filename: string): Expr2_ModStr =
  Expr2_ModStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2_ModStrObj) =
  close(x.io)

## Expr2_Tuple
proc avg*(this: Expr2_Tuple): int
proc avg(this: Expr2_Tuple): int = 
  if isSome(this.avgInst):
    return get(this.avgInst)
  this.avgInst = some(((this.byte1 + this.byte2) / 2))
  return get(this.avgInst)

proc read*(_: typedesc[Expr2_Tuple], io: KaitaiStream, root: Expr2, parent: Expr2_ModStr): Expr2_Tuple =
  let this = new(Expr2_Tuple)
  let root = if root == nil: cast[Expr2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.byte0 = this.io.readU1()
  this.byte1 = this.io.readU1()
  this.byte2 = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[Expr2_Tuple], filename: string): Expr2_Tuple =
  Expr2_Tuple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2_TupleObj) =
  close(x.io)

## Expr2
proc str1LenMod*(this: Expr2): int
proc str1Len*(this: Expr2): int
proc str1Tuple5*(this: Expr2): Expr2_Tuple
proc str2Tuple5*(this: Expr2): Expr2_Tuple
proc str1Avg*(this: Expr2): int
proc str1Byte1*(this: Expr2): uint8
proc str1Char5*(this: Expr2): string
proc str1LenMod(this: Expr2): int = 
  if isSome(this.str1LenModInst):
    return get(this.str1LenModInst)
  this.str1LenModInst = some(this.str1.lenMod)
  return get(this.str1LenModInst)

proc str1Len(this: Expr2): int = 
  if isSome(this.str1LenInst):
    return get(this.str1LenInst)
  this.str1LenInst = some(len(this.str1.str))
  return get(this.str1LenInst)

proc str1Tuple5(this: Expr2): Expr2_Tuple = 
  if isSome(this.str1Tuple5Inst):
    return get(this.str1Tuple5Inst)
  this.str1Tuple5Inst = some(this.str1.tuple5)
  return get(this.str1Tuple5Inst)

proc str2Tuple5(this: Expr2): Expr2_Tuple = 
  if isSome(this.str2Tuple5Inst):
    return get(this.str2Tuple5Inst)
  this.str2Tuple5Inst = some(this.str2.tuple5)
  return get(this.str2Tuple5Inst)

proc str1Avg(this: Expr2): int = 
  if isSome(this.str1AvgInst):
    return get(this.str1AvgInst)
  this.str1AvgInst = some(this.str1.rest.avg)
  return get(this.str1AvgInst)

proc str1Byte1(this: Expr2): uint8 = 
  if isSome(this.str1Byte1Inst):
    return get(this.str1Byte1Inst)
  this.str1Byte1Inst = some(this.str1.rest.byte1)
  return get(this.str1Byte1Inst)

proc str1Char5(this: Expr2): string = 
  if isSome(this.str1Char5Inst):
    return get(this.str1Char5Inst)
  this.str1Char5Inst = some(this.str1.char5)
  return get(this.str1Char5Inst)

proc read*(_: typedesc[Expr2], io: KaitaiStream, root: Expr2, parent: ref RootObj): Expr2 =
  let this = new(Expr2)
  let root = if root == nil: cast[Expr2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.str1 = Expr2_ModStr.read(this.io, this.root, this)
  this.str2 = Expr2_ModStr.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[Expr2], filename: string): Expr2 =
  Expr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr2Obj) =
  close(x.io)


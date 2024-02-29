import kaitai_struct_nim_runtime
import options

type
  Expr2* = ref object of KaitaiStruct
    `str1`*: Expr2_ModStr
    `str2`*: Expr2_ModStr
    `parent`*: KaitaiStruct
    `str1AvgInst`: int
    `str1AvgInstFlag`: bool
    `str1Byte1Inst`: uint8
    `str1Byte1InstFlag`: bool
    `str1Char5Inst`: string
    `str1Char5InstFlag`: bool
    `str1LenInst`: int
    `str1LenInstFlag`: bool
    `str1LenModInst`: int
    `str1LenModInstFlag`: bool
    `str1Tuple5Inst`: Expr2_Tuple
    `str1Tuple5InstFlag`: bool
    `str2Tuple5Inst`: Expr2_Tuple
    `str2Tuple5InstFlag`: bool
  Expr2_ModStr* = ref object of KaitaiStruct
    `lenOrig`*: uint16
    `str`*: string
    `rest`*: Expr2_Tuple
    `parent`*: Expr2
    `rawRest`*: seq[byte]
    `char5Inst`: string
    `char5InstFlag`: bool
    `lenModInst`: int
    `lenModInstFlag`: bool
    `tuple5Inst`: Expr2_Tuple
    `tuple5InstFlag`: bool
  Expr2_Tuple* = ref object of KaitaiStruct
    `byte0`*: uint8
    `byte1`*: uint8
    `byte2`*: uint8
    `parent`*: Expr2_ModStr
    `avgInst`: int
    `avgInstFlag`: bool

proc read*(_: typedesc[Expr2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr2
proc read*(_: typedesc[Expr2_ModStr], io: KaitaiStream, root: KaitaiStruct, parent: Expr2): Expr2_ModStr
proc read*(_: typedesc[Expr2_Tuple], io: KaitaiStream, root: KaitaiStruct, parent: Expr2_ModStr): Expr2_Tuple

proc str1Avg*(this: Expr2): int
proc str1Byte1*(this: Expr2): uint8
proc str1Char5*(this: Expr2): string
proc str1Len*(this: Expr2): int
proc str1LenMod*(this: Expr2): int
proc str1Tuple5*(this: Expr2): Expr2_Tuple
proc str2Tuple5*(this: Expr2): Expr2_Tuple
proc char5*(this: Expr2_ModStr): string
proc lenMod*(this: Expr2_ModStr): int
proc tuple5*(this: Expr2_ModStr): Expr2_Tuple
proc avg*(this: Expr2_Tuple): int

proc read*(_: typedesc[Expr2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr2 =
  template this: untyped = result
  this = new(Expr2)
  let root = if root == nil: cast[Expr2](this) else: cast[Expr2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let str1Expr = Expr2_ModStr.read(this.io, this.root, this)
  this.str1 = str1Expr
  let str2Expr = Expr2_ModStr.read(this.io, this.root, this)
  this.str2 = str2Expr

proc str1Avg(this: Expr2): int = 
  if this.str1AvgInstFlag:
    return this.str1AvgInst
  let str1AvgInstExpr = int(this.str1.rest.avg)
  this.str1AvgInst = str1AvgInstExpr
  this.str1AvgInstFlag = true
  return this.str1AvgInst

proc str1Byte1(this: Expr2): uint8 = 
  if this.str1Byte1InstFlag:
    return this.str1Byte1Inst
  let str1Byte1InstExpr = uint8(this.str1.rest.byte1)
  this.str1Byte1Inst = str1Byte1InstExpr
  this.str1Byte1InstFlag = true
  return this.str1Byte1Inst

proc str1Char5(this: Expr2): string = 
  if this.str1Char5InstFlag:
    return this.str1Char5Inst
  let str1Char5InstExpr = string(this.str1.char5)
  this.str1Char5Inst = str1Char5InstExpr
  this.str1Char5InstFlag = true
  return this.str1Char5Inst

proc str1Len(this: Expr2): int = 
  if this.str1LenInstFlag:
    return this.str1LenInst
  let str1LenInstExpr = int(len(this.str1.str))
  this.str1LenInst = str1LenInstExpr
  this.str1LenInstFlag = true
  return this.str1LenInst

proc str1LenMod(this: Expr2): int = 
  if this.str1LenModInstFlag:
    return this.str1LenModInst
  let str1LenModInstExpr = int(this.str1.lenMod)
  this.str1LenModInst = str1LenModInstExpr
  this.str1LenModInstFlag = true
  return this.str1LenModInst

proc str1Tuple5(this: Expr2): Expr2_Tuple = 
  if this.str1Tuple5InstFlag:
    return this.str1Tuple5Inst
  let str1Tuple5InstExpr = Expr2_Tuple(this.str1.tuple5)
  this.str1Tuple5Inst = str1Tuple5InstExpr
  this.str1Tuple5InstFlag = true
  return this.str1Tuple5Inst

proc str2Tuple5(this: Expr2): Expr2_Tuple = 
  if this.str2Tuple5InstFlag:
    return this.str2Tuple5Inst
  let str2Tuple5InstExpr = Expr2_Tuple(this.str2.tuple5)
  this.str2Tuple5Inst = str2Tuple5InstExpr
  this.str2Tuple5InstFlag = true
  return this.str2Tuple5Inst

proc fromFile*(_: typedesc[Expr2], filename: string): Expr2 =
  Expr2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Expr2_ModStr], io: KaitaiStream, root: KaitaiStruct, parent: Expr2): Expr2_ModStr =
  template this: untyped = result
  this = new(Expr2_ModStr)
  let root = if root == nil: cast[Expr2](this) else: cast[Expr2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOrigExpr = this.io.readU2le()
  this.lenOrig = lenOrigExpr
  let strExpr = encode(this.io.readBytes(int(this.lenMod)), "UTF-8")
  this.str = strExpr
  let rawRestExpr = this.io.readBytes(int(3))
  this.rawRest = rawRestExpr
  let rawRestIo = newKaitaiStream(rawRestExpr)
  let restExpr = Expr2_Tuple.read(rawRestIo, this.root, this)
  this.rest = restExpr

proc char5(this: Expr2_ModStr): string = 
  if this.char5InstFlag:
    return this.char5Inst
  let pos = this.io.pos()
  this.io.seek(int(5))
  let char5InstExpr = encode(this.io.readBytes(int(1)), "ASCII")
  this.char5Inst = char5InstExpr
  this.io.seek(pos)
  this.char5InstFlag = true
  return this.char5Inst

proc lenMod(this: Expr2_ModStr): int = 
  if this.lenModInstFlag:
    return this.lenModInst
  let lenModInstExpr = int((this.lenOrig - 3))
  this.lenModInst = lenModInstExpr
  this.lenModInstFlag = true
  return this.lenModInst

proc tuple5(this: Expr2_ModStr): Expr2_Tuple = 
  if this.tuple5InstFlag:
    return this.tuple5Inst
  let pos = this.io.pos()
  this.io.seek(int(5))
  let tuple5InstExpr = Expr2_Tuple.read(this.io, this.root, this)
  this.tuple5Inst = tuple5InstExpr
  this.io.seek(pos)
  this.tuple5InstFlag = true
  return this.tuple5Inst

proc fromFile*(_: typedesc[Expr2_ModStr], filename: string): Expr2_ModStr =
  Expr2_ModStr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Expr2_Tuple], io: KaitaiStream, root: KaitaiStruct, parent: Expr2_ModStr): Expr2_Tuple =
  template this: untyped = result
  this = new(Expr2_Tuple)
  let root = if root == nil: cast[Expr2](this) else: cast[Expr2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let byte0Expr = this.io.readU1()
  this.byte0 = byte0Expr
  let byte1Expr = this.io.readU1()
  this.byte1 = byte1Expr
  let byte2Expr = this.io.readU1()
  this.byte2 = byte2Expr

proc avg(this: Expr2_Tuple): int = 
  if this.avgInstFlag:
    return this.avgInst
  let avgInstExpr = int(((this.byte1 + this.byte2) div 2))
  this.avgInst = avgInstExpr
  this.avgInstFlag = true
  return this.avgInst

proc fromFile*(_: typedesc[Expr2_Tuple], filename: string): Expr2_Tuple =
  Expr2_Tuple.read(newKaitaiFileStream(filename), nil, nil)


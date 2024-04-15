import kaitai_struct_nim_runtime
import options
import hello_world

type
  ParamsDefArrayUsertypeImported* = ref object of KaitaiStruct
    `hwsParam`*: seq[HelloWorld]
    `parent`*: KaitaiStruct
    `hw0OneInst`: uint8
    `hw0OneInstFlag`: bool
    `hw1OneInst`: uint8
    `hw1OneInstFlag`: bool

proc read*(_: typedesc[ParamsDefArrayUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwsParam: any): ParamsDefArrayUsertypeImported

proc hw0One*(this: ParamsDefArrayUsertypeImported): uint8
proc hw1One*(this: ParamsDefArrayUsertypeImported): uint8

proc read*(_: typedesc[ParamsDefArrayUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, hwsParam: any): ParamsDefArrayUsertypeImported =
  template this: untyped = result
  this = new(ParamsDefArrayUsertypeImported)
  let root = if root == nil: cast[ParamsDefArrayUsertypeImported](this) else: cast[ParamsDefArrayUsertypeImported](root)
  this.io = io
  this.root = root
  this.parent = parent
  let hwsParamExpr = seq[HelloWorld](hwsParam)
  this.hwsParam = hwsParamExpr


proc hw0One(this: ParamsDefArrayUsertypeImported): uint8 = 
  if this.hw0OneInstFlag:
    return this.hw0OneInst
  let hw0OneInstExpr = uint8(this.hwsParam[0].one)
  this.hw0OneInst = hw0OneInstExpr
  this.hw0OneInstFlag = true
  return this.hw0OneInst

proc hw1One(this: ParamsDefArrayUsertypeImported): uint8 = 
  if this.hw1OneInstFlag:
    return this.hw1OneInst
  let hw1OneInstExpr = uint8(this.hwsParam[1].one)
  this.hw1OneInst = hw1OneInstExpr
  this.hw1OneInstFlag = true
  return this.hw1OneInst

proc fromFile*(_: typedesc[ParamsDefArrayUsertypeImported], filename: string): ParamsDefArrayUsertypeImported =
  ParamsDefArrayUsertypeImported.read(newKaitaiFileStream(filename), nil, nil)


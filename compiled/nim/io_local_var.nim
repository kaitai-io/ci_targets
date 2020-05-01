import kaitai_struct_nim_runtime
import options

type
  IoLocalVar* = ref object of KaitaiStruct
    skip*: seq[byte]
    alwaysNull*: uint8
    followup*: uint8
    parent*: KaitaiStruct
    rawMessUpInst*: seq[byte]
    messUpInst*: Option[any]
  IoLocalVar_Dummy* = ref object of KaitaiStruct
    parent*: IoLocalVar

proc read*(_: typedesc[IoLocalVar], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IoLocalVar
proc read*(_: typedesc[IoLocalVar_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: IoLocalVar): IoLocalVar_Dummy

proc messUp*(this: IoLocalVar): any

proc read*(_: typedesc[IoLocalVar], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IoLocalVar =
  template this: untyped = result
  this = new(IoLocalVar)
  let root = if root == nil: cast[IoLocalVar](this) else: cast[IoLocalVar](root)
  this.io = io
  this.root = root
  this.parent = parent

  let skipExpr = this.io.readBytes(int(20))
  this.skip = skipExpr
  if (IoLocalVar_Dummy(this.messUp)).io.pos < 0:
    let alwaysNullExpr = this.io.readU1()
    this.alwaysNull = alwaysNullExpr
  let followupExpr = this.io.readU1()
  this.followup = followupExpr

proc messUp(this: IoLocalVar): any = 
  if isSome(this.messUpInst):
    return get(this.messUpInst)
  let io = IoLocalVar(this.root).io
  let pos = io.pos()
  io.seek(int(8))
  block:
    let on = 2
    if on == 1:
      let rawMessUpInstExpr = io.readBytes(int(2))
      this.rawMessUpInst = rawMessUpInstExpr
      let rawMessUpInstIo = newKaitaiStream(rawMessUpInstExpr)
      let messUpInstExpr = IoLocalVar_Dummy.read(rawMessUpInstIo, this.root, this)
      this.messUpInst = messUpInstExpr
    elif on == 2:
      let rawMessUpInstExpr = io.readBytes(int(2))
      this.rawMessUpInst = rawMessUpInstExpr
      let rawMessUpInstIo = newKaitaiStream(rawMessUpInstExpr)
      let messUpInstExpr = IoLocalVar_Dummy.read(rawMessUpInstIo, this.root, this)
      this.messUpInst = messUpInstExpr
    else:
      let messUpInstExpr = io.readBytes(int(2))
      this.messUpInst = messUpInstExpr
  io.seek(pos)
  if isSome(this.messUpInst):
    return get(this.messUpInst)

proc fromFile*(_: typedesc[IoLocalVar], filename: string): IoLocalVar =
  IoLocalVar.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IoLocalVar_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: IoLocalVar): IoLocalVar_Dummy =
  template this: untyped = result
  this = new(IoLocalVar_Dummy)
  let root = if root == nil: cast[IoLocalVar](this) else: cast[IoLocalVar](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[IoLocalVar_Dummy], filename: string): IoLocalVar_Dummy =
  IoLocalVar_Dummy.read(newKaitaiFileStream(filename), nil, nil)


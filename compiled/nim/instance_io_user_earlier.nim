import kaitai_struct_nim_runtime
import options

type
  InstanceIoUserEarlier* = ref object of KaitaiStruct
    `sizedA`*: InstanceIoUserEarlier_Slot
    `sizedB`*: InstanceIoUserEarlier_Slot
    `intoB`*: InstanceIoUserEarlier_Foo
    `intoASkipped`*: InstanceIoUserEarlier_Foo
    `intoA`*: InstanceIoUserEarlier_Foo
    `lastAccessor`*: InstanceIoUserEarlier_Baz
    `parent`*: KaitaiStruct
    `rawSizedA`*: seq[byte]
    `rawSizedB`*: seq[byte]
    `aMidInst`: uint16
    `aMidInstFlag`: bool
    `bMidInst`: uint16
    `bMidInstFlag`: bool
  InstanceIoUserEarlier_Baz* = ref object of KaitaiStruct
    `v`*: uint8
    `parent`*: InstanceIoUserEarlier
  InstanceIoUserEarlier_Foo* = ref object of KaitaiStruct
    `indicator`*: uint8
    `bar`*: uint8
    `parent`*: InstanceIoUserEarlier
    `rawInstInst`*: seq[byte]
    `instInst`: InstanceIoUserEarlier_Slot
    `instInstFlag`: bool
  InstanceIoUserEarlier_Slot* = ref object of KaitaiStruct
    `content`*: uint8
    `parent`*: KaitaiStruct
    `lastInst`: uint8
    `lastInstFlag`: bool

proc read*(_: typedesc[InstanceIoUserEarlier], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUserEarlier
proc read*(_: typedesc[InstanceIoUserEarlier_Baz], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUserEarlier): InstanceIoUserEarlier_Baz
proc read*(_: typedesc[InstanceIoUserEarlier_Foo], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUserEarlier): InstanceIoUserEarlier_Foo
proc read*(_: typedesc[InstanceIoUserEarlier_Slot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUserEarlier_Slot

proc aMid*(this: InstanceIoUserEarlier): uint16
proc bMid*(this: InstanceIoUserEarlier): uint16
proc inst*(this: InstanceIoUserEarlier_Foo): InstanceIoUserEarlier_Slot
proc last*(this: InstanceIoUserEarlier_Slot): uint8

proc read*(_: typedesc[InstanceIoUserEarlier], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUserEarlier =
  template this: untyped = result
  this = new(InstanceIoUserEarlier)
  let root = if root == nil: cast[InstanceIoUserEarlier](this) else: cast[InstanceIoUserEarlier](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawSizedAExpr = this.io.readBytes(int(6))
  this.rawSizedA = rawSizedAExpr
  let rawSizedAIo = newKaitaiStream(rawSizedAExpr)
  let sizedAExpr = InstanceIoUserEarlier_Slot.read(rawSizedAIo, this.root, this)
  this.sizedA = sizedAExpr
  let rawSizedBExpr = this.io.readBytes(int(6))
  this.rawSizedB = rawSizedBExpr
  let rawSizedBIo = newKaitaiStream(rawSizedBExpr)
  let sizedBExpr = InstanceIoUserEarlier_Slot.read(rawSizedBIo, this.root, this)
  this.sizedB = sizedBExpr
  let intoBExpr = InstanceIoUserEarlier_Foo.read(this.io, this.root, this)
  this.intoB = intoBExpr
  let intoASkippedExpr = InstanceIoUserEarlier_Foo.read(this.io, this.root, this)
  this.intoASkipped = intoASkippedExpr
  let intoAExpr = InstanceIoUserEarlier_Foo.read(this.io, this.root, this)
  this.intoA = intoAExpr
  let lastAccessorExpr = InstanceIoUserEarlier_Baz.read(this.io, this.root, this)
  this.lastAccessor = lastAccessorExpr

proc aMid(this: InstanceIoUserEarlier): uint16 = 
  if this.aMidInstFlag:
    return this.aMidInst
  let io = this.intoA.inst.io
  let pos = io.pos()
  io.seek(int(1))
  let aMidInstExpr = io.readU2le()
  this.aMidInst = aMidInstExpr
  io.seek(pos)
  this.aMidInstFlag = true
  return this.aMidInst

proc bMid(this: InstanceIoUserEarlier): uint16 = 
  if this.bMidInstFlag:
    return this.bMidInst
  let io = this.intoB.inst.io
  let pos = io.pos()
  io.seek(int(1))
  let bMidInstExpr = io.readU2le()
  this.bMidInst = bMidInstExpr
  io.seek(pos)
  this.bMidInstFlag = true
  return this.bMidInst

proc fromFile*(_: typedesc[InstanceIoUserEarlier], filename: string): InstanceIoUserEarlier =
  InstanceIoUserEarlier.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUserEarlier_Baz], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUserEarlier): InstanceIoUserEarlier_Baz =
  template this: untyped = result
  this = new(InstanceIoUserEarlier_Baz)
  let root = if root == nil: cast[InstanceIoUserEarlier](this) else: cast[InstanceIoUserEarlier](root)
  this.io = io
  this.root = root
  this.parent = parent

  if this.parent.intoB.inst.last == 89:
    let vExpr = this.io.readU1()
    this.v = vExpr

proc fromFile*(_: typedesc[InstanceIoUserEarlier_Baz], filename: string): InstanceIoUserEarlier_Baz =
  InstanceIoUserEarlier_Baz.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUserEarlier_Foo], io: KaitaiStream, root: KaitaiStruct, parent: InstanceIoUserEarlier): InstanceIoUserEarlier_Foo =
  template this: untyped = result
  this = new(InstanceIoUserEarlier_Foo)
  let root = if root == nil: cast[InstanceIoUserEarlier](this) else: cast[InstanceIoUserEarlier](root)
  this.io = io
  this.root = root
  this.parent = parent

  let indicatorExpr = this.io.readU1()
  this.indicator = indicatorExpr
  if  ((this.inst.io.size != 0) and (this.inst.content == 102)) :
    let barExpr = this.io.readU1()
    this.bar = barExpr

proc inst(this: InstanceIoUserEarlier_Foo): InstanceIoUserEarlier_Slot = 
  if this.instInstFlag:
    return this.instInst
  let io = (if this.indicator == 202: this.parent.sizedB.io else: this.parent.sizedA.io)
  let pos = io.pos()
  io.seek(int(1))
  let rawInstInstExpr = io.readBytes(int((if this.io.pos != 14: 4 else: 0)))
  this.rawInstInst = rawInstInstExpr
  let rawInstInstIo = newKaitaiStream(rawInstInstExpr)
  let instInstExpr = InstanceIoUserEarlier_Slot.read(rawInstInstIo, this.root, this)
  this.instInst = instInstExpr
  io.seek(pos)
  this.instInstFlag = true
  return this.instInst

proc fromFile*(_: typedesc[InstanceIoUserEarlier_Foo], filename: string): InstanceIoUserEarlier_Foo =
  InstanceIoUserEarlier_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceIoUserEarlier_Slot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceIoUserEarlier_Slot =
  template this: untyped = result
  this = new(InstanceIoUserEarlier_Slot)
  let root = if root == nil: cast[InstanceIoUserEarlier](this) else: cast[InstanceIoUserEarlier](root)
  this.io = io
  this.root = root
  this.parent = parent

  if this.io.size != 0:
    let contentExpr = this.io.readU1()
    this.content = contentExpr

proc last(this: InstanceIoUserEarlier_Slot): uint8 = 
  if this.lastInstFlag:
    return this.lastInst
  if this.io.size != 0:
    let pos = this.io.pos()
    this.io.seek(int(this.io.size - 1))
    let lastInstExpr = this.io.readU1()
    this.lastInst = lastInstExpr
    this.io.seek(pos)
  this.lastInstFlag = true
  return this.lastInst

proc fromFile*(_: typedesc[InstanceIoUserEarlier_Slot], filename: string): InstanceIoUserEarlier_Slot =
  InstanceIoUserEarlier_Slot.read(newKaitaiFileStream(filename), nil, nil)


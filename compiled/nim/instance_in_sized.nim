import kaitai_struct_nim_runtime
import options

type
  InstanceInSized* = ref object of KaitaiStruct
    `cont`*: InstanceInSized_Wrapper
    `parent`*: KaitaiStruct
    `rawCont`*: seq[byte]
  InstanceInSized_Bar* = ref object of KaitaiStruct
    `seqF`*: uint8
    `parent`*: InstanceInSized_Wrapper
    `instInst`: seq[byte]
    `instInstFlag`: bool
  InstanceInSized_Baz* = ref object of KaitaiStruct
    `seqF`*: uint8
    `parent`*: InstanceInSized_Wrapper
    `instInst`: seq[byte]
    `instInstFlag`: bool
  InstanceInSized_Qux* = ref object of KaitaiStruct
    `seqF`*: uint8
    `parent`*: InstanceInSized_Wrapper
    `instInvokedInst`: uint8
    `instInvokedInstFlag`: bool
    `instUnusedBySeqInst`: seq[byte]
    `instUnusedBySeqInstFlag`: bool
  InstanceInSized_Wrapper* = ref object of KaitaiStruct
    `seqSized`*: InstanceInSized_Qux
    `seqInStream`*: InstanceInSized_Bar
    `parent`*: InstanceInSized
    `rawSeqSized`*: seq[byte]
    `rawInstSizedInst`*: seq[byte]
    `instInStreamInst`: InstanceInSized_Baz
    `instInStreamInstFlag`: bool
    `instSizedInst`: InstanceInSized_Qux
    `instSizedInstFlag`: bool

proc read*(_: typedesc[InstanceInSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInSized
proc read*(_: typedesc[InstanceInSized_Bar], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Bar
proc read*(_: typedesc[InstanceInSized_Baz], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Baz
proc read*(_: typedesc[InstanceInSized_Qux], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Qux
proc read*(_: typedesc[InstanceInSized_Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized): InstanceInSized_Wrapper

proc inst*(this: InstanceInSized_Bar): seq[byte]
proc inst*(this: InstanceInSized_Baz): seq[byte]
proc instInvoked*(this: InstanceInSized_Qux): uint8
proc instUnusedBySeq*(this: InstanceInSized_Qux): seq[byte]
proc instInStream*(this: InstanceInSized_Wrapper): InstanceInSized_Baz
proc instSized*(this: InstanceInSized_Wrapper): InstanceInSized_Qux

proc read*(_: typedesc[InstanceInSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInSized =
  template this: untyped = result
  this = new(InstanceInSized)
  let root = if root == nil: cast[InstanceInSized](this) else: cast[InstanceInSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawContExpr = this.io.readBytes(int(16))
  this.rawCont = rawContExpr
  let rawContIo = newKaitaiStream(rawContExpr)
  let contExpr = InstanceInSized_Wrapper.read(rawContIo, this.root, this)
  this.cont = contExpr

proc fromFile*(_: typedesc[InstanceInSized], filename: string): InstanceInSized =
  InstanceInSized.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceInSized_Bar], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Bar =
  template this: untyped = result
  this = new(InstanceInSized_Bar)
  let root = if root == nil: cast[InstanceInSized](this) else: cast[InstanceInSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let seqFExpr = this.io.readU1()
  this.seqF = seqFExpr

proc inst(this: InstanceInSized_Bar): seq[byte] = 
  if this.instInstFlag:
    return this.instInst
  let pos = this.io.pos()
  this.io.seek(int(4 + 1))
  let instInstExpr = this.io.readBytes(int(3))
  this.instInst = instInstExpr
  this.io.seek(pos)
  this.instInstFlag = true
  return this.instInst

proc fromFile*(_: typedesc[InstanceInSized_Bar], filename: string): InstanceInSized_Bar =
  InstanceInSized_Bar.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceInSized_Baz], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Baz =
  template this: untyped = result
  this = new(InstanceInSized_Baz)
  let root = if root == nil: cast[InstanceInSized](this) else: cast[InstanceInSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let seqFExpr = this.io.readU1()
  this.seqF = seqFExpr

proc inst(this: InstanceInSized_Baz): seq[byte] = 
  if this.instInstFlag:
    return this.instInst
  let pos = this.io.pos()
  this.io.seek(int(8 + 1))
  let instInstExpr = this.io.readBytes(int(3))
  this.instInst = instInstExpr
  this.io.seek(pos)
  this.instInstFlag = true
  return this.instInst

proc fromFile*(_: typedesc[InstanceInSized_Baz], filename: string): InstanceInSized_Baz =
  InstanceInSized_Baz.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceInSized_Qux], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized_Wrapper): InstanceInSized_Qux =
  template this: untyped = result
  this = new(InstanceInSized_Qux)
  let root = if root == nil: cast[InstanceInSized](this) else: cast[InstanceInSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  if this.instInvoked > 0:
    let seqFExpr = this.io.readU1()
    this.seqF = seqFExpr

proc instInvoked(this: InstanceInSized_Qux): uint8 = 
  if this.instInvokedInstFlag:
    return this.instInvokedInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 1))
  let instInvokedInstExpr = this.io.readU1()
  this.instInvokedInst = instInvokedInstExpr
  this.io.seek(pos)
  this.instInvokedInstFlag = true
  return this.instInvokedInst

proc instUnusedBySeq(this: InstanceInSized_Qux): seq[byte] = 
  if this.instUnusedBySeqInstFlag:
    return this.instUnusedBySeqInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 1))
  let instUnusedBySeqInstExpr = this.io.readBytes(int(2))
  this.instUnusedBySeqInst = instUnusedBySeqInstExpr
  this.io.seek(pos)
  this.instUnusedBySeqInstFlag = true
  return this.instUnusedBySeqInst

proc fromFile*(_: typedesc[InstanceInSized_Qux], filename: string): InstanceInSized_Qux =
  InstanceInSized_Qux.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceInSized_Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInSized): InstanceInSized_Wrapper =
  template this: untyped = result
  this = new(InstanceInSized_Wrapper)
  let root = if root == nil: cast[InstanceInSized](this) else: cast[InstanceInSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawSeqSizedExpr = this.io.readBytes(int(4))
  this.rawSeqSized = rawSeqSizedExpr
  let rawSeqSizedIo = newKaitaiStream(rawSeqSizedExpr)
  let seqSizedExpr = InstanceInSized_Qux.read(rawSeqSizedIo, this.root, this)
  this.seqSized = seqSizedExpr
  let seqInStreamExpr = InstanceInSized_Bar.read(this.io, this.root, this)
  this.seqInStream = seqInStreamExpr

proc instInStream(this: InstanceInSized_Wrapper): InstanceInSized_Baz = 
  if this.instInStreamInstFlag:
    return this.instInStreamInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 3))
  let instInStreamInstExpr = InstanceInSized_Baz.read(this.io, this.root, this)
  this.instInStreamInst = instInStreamInstExpr
  this.io.seek(pos)
  this.instInStreamInstFlag = true
  return this.instInStreamInst

proc instSized(this: InstanceInSized_Wrapper): InstanceInSized_Qux = 
  if this.instSizedInstFlag:
    return this.instSizedInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 7))
  let rawInstSizedInstExpr = this.io.readBytes(int(4))
  this.rawInstSizedInst = rawInstSizedInstExpr
  let rawInstSizedInstIo = newKaitaiStream(rawInstSizedInstExpr)
  let instSizedInstExpr = InstanceInSized_Qux.read(rawInstSizedInstIo, this.root, this)
  this.instSizedInst = instSizedInstExpr
  this.io.seek(pos)
  this.instSizedInstFlag = true
  return this.instSizedInst

proc fromFile*(_: typedesc[InstanceInSized_Wrapper], filename: string): InstanceInSized_Wrapper =
  InstanceInSized_Wrapper.read(newKaitaiFileStream(filename), nil, nil)


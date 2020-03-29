import kaitai_struct_nim_runtime

type
  PositionInSeq_HeaderObj* = ref PositionInSeq_HeaderObjObj
  PositionInSeq_HeaderObjObj* = object
    qtyNumbers*: uint32
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: PositionInSeq
  PositionInSeq* = ref PositionInSeqObj
  PositionInSeqObj* = object
    numbers*: seq[uint8]
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: ref RootObj

### PositionInSeq_HeaderObj ###
proc read*(_: typedesc[PositionInSeq_HeaderObj], io: KaitaiStream, root: PositionInSeq, parent: PositionInSeq): PositionInSeq_HeaderObj =
  result = new(PositionInSeq_HeaderObj)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qtyNumbers = io.readU4le()
  result.qtyNumbers = qtyNumbers

proc fromFile*(_: typedesc[PositionInSeq_HeaderObj], filename: string): PositionInSeq_HeaderObj =
  PositionInSeq_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeq_HeaderObjObj) =
  close(x.io)

### PositionInSeq ###
proc read*(_: typedesc[PositionInSeq], io: KaitaiStream, root: PositionInSeq, parent: ref RootObj): PositionInSeq =
  result = new(PositionInSeq)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  numbers = newSeq[uint8](header.qtyNumbers)
  for i in 0 ..< header.qtyNumbers:
    numbers.add(io.readU1())

proc fromFile*(_: typedesc[PositionInSeq], filename: string): PositionInSeq =
  PositionInSeq.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeqObj) =
  close(x.io)


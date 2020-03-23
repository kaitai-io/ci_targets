import kaitai_struct_nim_runtime

type
  PositionInSeqheaderObj* = ref PositionInSeqheaderObjObj
  PositionInSeqheaderObjObj* = object
    numbers*: seq[uint8]
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: ref RootObj
  PositionInSeq* = ref PositionInSeqObj
  PositionInSeqObj* = object
    numbers*: seq[uint8]
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: ref RootObj

### PositionInSeqheaderObj ###
proc read*(_: typedesc[PositionInSeqheaderObj], io: KaitaiStream, root: PositionInSeq, parent: PositionInSeq): PositionInSeqheaderObj =
  result = new(PositionInSeqheaderObj)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qtyNumbers = result.io.readU4le()

proc fromFile*(_: typedesc[PositionInSeqheaderObj], filename: string): PositionInSeqheaderObj =
  PositionInSeqheaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeqheaderObjObj) =
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
    result.numbers.add(result.io.readU1())

proc fromFile*(_: typedesc[PositionInSeq], filename: string): PositionInSeq =
  PositionInSeq.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeqObj) =
  close(x.io)


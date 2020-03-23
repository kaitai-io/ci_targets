import kaitai_struct_nim_runtime

type
  RepeatNStructchunk* = ref RepeatNStructchunkObj
  RepeatNStructchunkObj* = object
    qty*: uint32
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: RepeatNStruct
    parent*: ref RootObj
  RepeatNStruct* = ref RepeatNStructObj
  RepeatNStructObj* = object
    qty*: uint32
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: RepeatNStruct
    parent*: ref RootObj

### RepeatNStructchunk ###
proc read*(_: typedesc[RepeatNStructchunk], io: KaitaiStream, root: RepeatNStruct, parent: RepeatNStruct): RepeatNStructchunk =
  result = new(RepeatNStructchunk)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.offset = result.io.readU4le()
  result.len = result.io.readU4le()

proc fromFile*(_: typedesc[RepeatNStructchunk], filename: string): RepeatNStructchunk =
  RepeatNStructchunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStructchunkObj) =
  close(x.io)

### RepeatNStruct ###
proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: RepeatNStruct, parent: ref RootObj): RepeatNStruct =
  result = new(RepeatNStruct)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qty = result.io.readU4le()
  chunks = newSeq[Chunk](qty)
  for i in 0 ..< qty:
    result.chunks.add(Chunk.read(result.io, result, root))

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): RepeatNStruct =
  RepeatNStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStructObj) =
  close(x.io)


import kaitai_struct_nim_runtime

type
  RepeatEosStructchunk* = ref RepeatEosStructchunkObj
  RepeatEosStructchunkObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: RepeatEosStruct
    parent*: ref RootObj
  RepeatEosStruct* = ref RepeatEosStructObj
  RepeatEosStructObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: RepeatEosStruct
    parent*: ref RootObj

### RepeatEosStructchunk ###
proc read*(_: typedesc[RepeatEosStructchunk], io: KaitaiStream, root: RepeatEosStruct, parent: RepeatEosStruct): RepeatEosStructchunk =
  result = new(RepeatEosStructchunk)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.offset = result.io.readU4le()
  result.len = result.io.readU4le()

proc fromFile*(_: typedesc[RepeatEosStructchunk], filename: string): RepeatEosStructchunk =
  RepeatEosStructchunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStructchunkObj) =
  close(x.io)

### RepeatEosStruct ###
proc read*(_: typedesc[RepeatEosStruct], io: KaitaiStream, root: RepeatEosStruct, parent: ref RootObj): RepeatEosStruct =
  result = new(RepeatEosStruct)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.chunks = newSeq[Chunk]()
  block:
    var i: int
    while not result.io.eof:
      result.chunks.add(Chunk.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[RepeatEosStruct], filename: string): RepeatEosStruct =
  RepeatEosStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStructObj) =
  close(x.io)


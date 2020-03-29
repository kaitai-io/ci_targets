import kaitai_struct_nim_runtime

type
  ProcessRepeatBytes* = ref ProcessRepeatBytesObj
  ProcessRepeatBytesObj* = object
    bufs*: seq[string]
    io*: KaitaiStream
    root*: ProcessRepeatBytes
    parent*: ref RootObj
    rawBufs*: seq[string]

### ProcessRepeatBytes ###
proc read*(_: typedesc[ProcessRepeatBytes], io: KaitaiStream, root: ProcessRepeatBytes, parent: ref RootObj): ProcessRepeatBytes =
  result = new(ProcessRepeatBytes)
  let root = if root == nil: cast[ProcessRepeatBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  rawBufs = newString(2)
  bufs = newSeq[string](2)
  for i in 0 ..< 2:
    rawBufs.add(io.readBytes(int(5)))
    bufs.add(rawBufs.processXor(158))

proc fromFile*(_: typedesc[ProcessRepeatBytes], filename: string): ProcessRepeatBytes =
  ProcessRepeatBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatBytesObj) =
  close(x.io)


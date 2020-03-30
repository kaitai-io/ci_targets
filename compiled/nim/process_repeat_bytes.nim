import kaitai_struct_nim_runtime
import options

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
  let this = new(ProcessRepeatBytes)
  let root = if root == nil: cast[ProcessRepeatBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBufs = newString(2)
  bufs = newSeq[string](2)
  for i in 0 ..< 2:
    this.rawBufs.add(this.io.readBytes(int(5)))
    this.bufs.add(rawBufs.processXor(158))
  result = this

proc fromFile*(_: typedesc[ProcessRepeatBytes], filename: string): ProcessRepeatBytes =
  ProcessRepeatBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatBytesObj) =
  close(x.io)


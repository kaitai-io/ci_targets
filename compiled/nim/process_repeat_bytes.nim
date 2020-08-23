import kaitai_struct_nim_runtime
import options

type
  ProcessRepeatBytes* = ref object of KaitaiStruct
    `bufs`*: seq[seq[byte]]
    `parent`*: KaitaiStruct
    `rawBufs`*: seq[seq[byte]]

proc read*(_: typedesc[ProcessRepeatBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatBytes


proc read*(_: typedesc[ProcessRepeatBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatBytes =
  template this: untyped = result
  this = new(ProcessRepeatBytes)
  let root = if root == nil: cast[ProcessRepeatBytes](this) else: cast[ProcessRepeatBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytes(int(5))
    this.rawBufs.add(buf)
    let it = this.rawBufs[i].processXor(158)
    this.bufs.add(it)

proc fromFile*(_: typedesc[ProcessRepeatBytes], filename: string): ProcessRepeatBytes =
  ProcessRepeatBytes.read(newKaitaiFileStream(filename), nil, nil)


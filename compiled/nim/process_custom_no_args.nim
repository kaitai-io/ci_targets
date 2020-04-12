import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCustomNoArgs* = ref object of KaitaiStruct
    buf*: string
    parent*: KaitaiStruct
    rawBuf*: string

proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustomNoArgs


proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustomNoArgs =
  template this: untyped = result
  this = new(ProcessCustomNoArgs)
  let root = if root == nil: cast[ProcessCustomNoArgs](this) else: cast[ProcessCustomNoArgs](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf = this.io.readBytes(int(5))
  process_rawBuf = CustomFxNoArgs()
  this.buf = process_rawBuf.decode(rawBuf)

proc fromFile*(_: typedesc[ProcessCustomNoArgs], filename: string): ProcessCustomNoArgs =
  ProcessCustomNoArgs.read(newKaitaiFileStream(filename), nil, nil)


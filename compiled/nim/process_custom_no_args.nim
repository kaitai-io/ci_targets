import kaitai_struct_nim_runtime
import options
import ../../tests/spec/nim/opaque/custom_fx_no_args

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCustomNoArgs* = ref object of KaitaiStruct
    buf*: seq[byte]
    parent*: KaitaiStruct
    rawBuf*: seq[byte]

proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustomNoArgs


proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustomNoArgs =
  template this: untyped = result
  this = new(ProcessCustomNoArgs)
  let root = if root == nil: cast[ProcessCustomNoArgs](this) else: cast[ProcessCustomNoArgs](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf = this.io.readBytes(int(5))
  this.buf = customFxNoArgs(this.rawBuf, )

proc fromFile*(_: typedesc[ProcessCustomNoArgs], filename: string): ProcessCustomNoArgs =
  ProcessCustomNoArgs.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import custom_fx_no_args

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

  let rawBufExpr = this.io.readBytes(int(5))
  this.rawBuf = rawBufExpr
  let bufExpr = custom_fx_no_args(this.rawBuf, )
  this.buf = bufExpr

proc fromFile*(_: typedesc[ProcessCustomNoArgs], filename: string): ProcessCustomNoArgs =
  ProcessCustomNoArgs.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options
import ../../tests/spec/nim/opaque/my_custom_fx
import ../../tests/spec/nim/opaque/nested/deeply/custom_fx

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCustom* = ref object of KaitaiStruct
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]
    parent*: KaitaiStruct
    rawBuf1*: seq[byte]
    rawBuf2*: seq[byte]
    rawBuf3*: seq[byte]

proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom


proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom =
  template this: untyped = result
  this = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](this) else: cast[ProcessCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf1 = this.io.readBytes(int(5))
  this.buf1 = myCustomFx(this.rawBuf1, 7, true, @[32'u8, 48'u8, 64'u8])
  this.rawBuf2 = this.io.readBytes(int(5))
  this.buf2 = customFx(this.rawBuf2, 7)
  this.key = this.io.readU1()
  this.rawBuf3 = this.io.readBytes(int(5))
  this.buf3 = myCustomFx(this.rawBuf3, this.key, false, @[0'u8])

proc fromFile*(_: typedesc[ProcessCustom], filename: string): ProcessCustom =
  ProcessCustom.read(newKaitaiFileStream(filename), nil, nil)


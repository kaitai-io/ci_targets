import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCustom* = ref object of KaitaiStruct
    buf1*: string
    buf2*: string
    key*: uint8
    buf3*: string
    parent*: KaitaiStruct
    rawBuf1*: string
    rawBuf2*: string
    rawBuf3*: string

proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom


proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom =
  template this: untyped = result
  this = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](this) else: cast[ProcessCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf1 = this.io.readBytes(int(5))
  process_rawBuf1 = MyCustomFx(7, true, @[32'i8, 48, 64].toString)
  this.buf1 = process_rawBuf1.decode(rawBuf1)
  this.rawBuf2 = this.io.readBytes(int(5))
  process_rawBuf2 = nested.deeply.CustomFx(7)
  this.buf2 = process_rawBuf2.decode(rawBuf2)
  this.key = this.io.readU1()
  this.rawBuf3 = this.io.readBytes(int(5))
  process_rawBuf3 = MyCustomFx(this.key, false, @[0'i8, ].toString)
  this.buf3 = process_rawBuf3.decode(rawBuf3)

proc fromFile*(_: typedesc[ProcessCustom], filename: string): ProcessCustom =
  ProcessCustom.read(newKaitaiFileStream(filename), nil, nil)


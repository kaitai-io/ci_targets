import kaitai_struct_nim_runtime
import options

type
  ProcessCustom* = ref ProcessCustomObj
  ProcessCustomObj* = object
    buf1*: string
    buf2*: string
    key*: uint8
    buf3*: string
    io*: KaitaiStream
    root*: ProcessCustom
    parent*: ref RootObj
    rawBuf1*: string
    rawBuf2*: string
    rawBuf3*: string

## ProcessCustom
proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: ProcessCustom, parent: ref RootObj): ProcessCustom =
  let this = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf1 = this.io.readBytes(int(5))
  process_rawBuf1 = MyCustomFx(7, true, @[32, 48, 64].mapIt(it.toByte).toString)
  this.buf1 = process_rawBuf1.decode(rawBuf1)
  this.rawBuf2 = this.io.readBytes(int(5))
  process_rawBuf2 = nested.deeply.CustomFx(7)
  this.buf2 = process_rawBuf2.decode(rawBuf2)
  this.key = this.io.readU1()
  this.rawBuf3 = this.io.readBytes(int(5))
  process_rawBuf3 = MyCustomFx(this.key, false, @[0].mapIt(it.toByte).toString)
  this.buf3 = process_rawBuf3.decode(rawBuf3)
  result = this

proc fromFile*(_: typedesc[ProcessCustom], filename: string): ProcessCustom =
  ProcessCustom.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCustomObj) =
  close(x.io)


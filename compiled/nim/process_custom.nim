import kaitai_struct_nim_runtime

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

### ProcessCustom ###
proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: ProcessCustom, parent: ref RootObj): ProcessCustom =
  result = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawBuf1 = result.io.readBytes(5)
  process_rawBuf1 = MyCustomFx(7, true, @[32, 48, 64].mapIt(it.toByte).toString)
  result.buf1 = process_rawBuf1.decode(rawBuf1)
  result.rawBuf2 = result.io.readBytes(5)
  process_rawBuf2 = nested.deeply.CustomFx(7)
  result.buf2 = process_rawBuf2.decode(rawBuf2)
  result.key = result.io.readU1()
  result.rawBuf3 = result.io.readBytes(5)
  process_rawBuf3 = MyCustomFx(key, false, @[0].mapIt(it.toByte).toString)
  result.buf3 = process_rawBuf3.decode(rawBuf3)

proc fromFile*(_: typedesc[ProcessCustom], filename: string): ProcessCustom =
  ProcessCustom.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCustomObj) =
  close(x.io)


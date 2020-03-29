import kaitai_struct_nim_runtime

type
  ProcessCustomNoArgs* = ref ProcessCustomNoArgsObj
  ProcessCustomNoArgsObj* = object
    buf*: string
    io*: KaitaiStream
    root*: ProcessCustomNoArgs
    parent*: ref RootObj
    rawBuf*: string

### ProcessCustomNoArgs ###
proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: ProcessCustomNoArgs, parent: ref RootObj): ProcessCustomNoArgs =
  result = new(ProcessCustomNoArgs)
  let root = if root == nil: cast[ProcessCustomNoArgs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawBuf = io.readBytes(int(5))
  result.rawBuf = rawBuf
  process_rawBuf = CustomFxNoArgs()
  let buf = process_rawBuf.decode(rawBuf)
  result.buf = buf

proc fromFile*(_: typedesc[ProcessCustomNoArgs], filename: string): ProcessCustomNoArgs =
  ProcessCustomNoArgs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCustomNoArgsObj) =
  close(x.io)


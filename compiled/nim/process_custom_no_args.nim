import kaitai_struct_nim_runtime
import options

type
  ProcessCustomNoArgs* = ref ProcessCustomNoArgsObj
  ProcessCustomNoArgsObj* = object
    buf*: string
    io*: KaitaiStream
    root*: ProcessCustomNoArgs
    parent*: ref RootObj
    rawBuf*: string

## ProcessCustomNoArgs
proc read*(_: typedesc[ProcessCustomNoArgs], io: KaitaiStream, root: ProcessCustomNoArgs, parent: ref RootObj): ProcessCustomNoArgs =
  let this = new(ProcessCustomNoArgs)
  let root = if root == nil: cast[ProcessCustomNoArgs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf = this.io.readBytes(int(5))
  process_rawBuf = CustomFxNoArgs()
  this.buf = process_rawBuf.decode(rawBuf)
  result = this

proc fromFile*(_: typedesc[ProcessCustomNoArgs], filename: string): ProcessCustomNoArgs =
  ProcessCustomNoArgs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCustomNoArgsObj) =
  close(x.io)


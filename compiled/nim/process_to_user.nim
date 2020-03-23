import kaitai_struct_nim_runtime
import encodings

type
  ProcessToUserjustStr* = ref ProcessToUserjustStrObj
  ProcessToUserjustStrObj* = object
    buf1*: JustStr
    io*: KaitaiStream
    root*: ProcessToUser
    parent*: ref RootObj
    rawBuf1*: string
    rawRawBuf1*: string
  ProcessToUser* = ref ProcessToUserObj
  ProcessToUserObj* = object
    buf1*: JustStr
    io*: KaitaiStream
    root*: ProcessToUser
    parent*: ref RootObj
    rawBuf1*: string
    rawRawBuf1*: string

### ProcessToUserjustStr ###
proc read*(_: typedesc[ProcessToUserjustStr], io: KaitaiStream, root: ProcessToUser, parent: ProcessToUser): ProcessToUserjustStr =
  result = new(ProcessToUserjustStr)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.str = convert(result.io.readBytesFull(), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[ProcessToUserjustStr], filename: string): ProcessToUserjustStr =
  ProcessToUserjustStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUserjustStrObj) =
  close(x.io)

### ProcessToUser ###
proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: ProcessToUser, parent: ref RootObj): ProcessToUser =
  result = new(ProcessToUser)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawRawBuf1 = result.io.readBytes(5)
  result.rawBuf1 = rawRawBuf1.processRotateLeft(3, 1)
  rawBuf1Io = newKaitaiStringStream(rawBuf1)
  result.buf1 = JustStr.read(rawBuf1Io, result, root)

proc fromFile*(_: typedesc[ProcessToUser], filename: string): ProcessToUser =
  ProcessToUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUserObj) =
  close(x.io)


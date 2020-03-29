import kaitai_struct_nim_runtime
import encodings

type
  ProcessToUser_JustStr* = ref ProcessToUser_JustStrObj
  ProcessToUser_JustStrObj* = object
    str*: string
    io*: KaitaiStream
    root*: ProcessToUser
    parent*: ProcessToUser
  ProcessToUser* = ref ProcessToUserObj
  ProcessToUserObj* = object
    buf1*: ProcessToUser_JustStr
    io*: KaitaiStream
    root*: ProcessToUser
    parent*: ref RootObj
    rawBuf1*: string
    rawRawBuf1*: string

### ProcessToUser_JustStr ###
proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: ProcessToUser, parent: ProcessToUser): ProcessToUser_JustStr =
  result = new(ProcessToUser_JustStr)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let str = convert(io.readBytesFull(), srcEncoding = "UTF-8")
  result.str = str

proc fromFile*(_: typedesc[ProcessToUser_JustStr], filename: string): ProcessToUser_JustStr =
  ProcessToUser_JustStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUser_JustStrObj) =
  close(x.io)

### ProcessToUser ###
proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: ProcessToUser, parent: ref RootObj): ProcessToUser =
  result = new(ProcessToUser)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawRawBuf1 = io.readBytes(int(5))
  result.rawRawBuf1 = rawRawBuf1
  let rawBuf1 = rawRawBuf1.processRotateLeft(3, 1)
  result.rawBuf1 = rawBuf1
  let rawBuf1Io = newKaitaiStringStream(rawBuf1)
  let buf1 = ProcessToUser_JustStr.read(rawBuf1Io, result, root)
  result.buf1 = buf1

proc fromFile*(_: typedesc[ProcessToUser], filename: string): ProcessToUser =
  ProcessToUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUserObj) =
  close(x.io)


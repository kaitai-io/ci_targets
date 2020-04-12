import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessToUser* = ref object of KaitaiStruct
    buf1*: ProcessToUser_JustStr
    parent*: KaitaiStruct
    rawBuf1*: string
    rawRawBuf1*: string
  ProcessToUser_JustStr* = ref object of KaitaiStruct
    str*: string
    parent*: ProcessToUser

proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessToUser
proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: KaitaiStruct, parent: ProcessToUser): ProcessToUser_JustStr


proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessToUser =
  template this: untyped = result
  this = new(ProcessToUser)
  let root = if root == nil: cast[ProcessToUser](this) else: cast[ProcessToUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawRawBuf1 = this.io.readBytes(int(5))
  this.rawBuf1 = rawRawBuf1.processRotateLeft(3, 1)
  let rawBuf1Io = newKaitaiStringStream(this.rawBuf1)
  this.buf1 = ProcessToUser_JustStr.read(rawBuf1Io, this.root, this)

proc fromFile*(_: typedesc[ProcessToUser], filename: string): ProcessToUser =
  ProcessToUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: KaitaiStruct, parent: ProcessToUser): ProcessToUser_JustStr =
  template this: untyped = result
  this = new(ProcessToUser_JustStr)
  let root = if root == nil: cast[ProcessToUser](this) else: cast[ProcessToUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.str = convert(this.io.readBytesFull(), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[ProcessToUser_JustStr], filename: string): ProcessToUser_JustStr =
  ProcessToUser_JustStr.read(newKaitaiFileStream(filename), nil, nil)


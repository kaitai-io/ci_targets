import kaitai_struct_nim_runtime
import options
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

## ProcessToUser_JustStr
proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: ProcessToUser, parent: ProcessToUser): ProcessToUser_JustStr =
  let this = new(ProcessToUser_JustStr)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.str = convert(this.io.readBytesFull(), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[ProcessToUser_JustStr], filename: string): ProcessToUser_JustStr =
  ProcessToUser_JustStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUser_JustStrObj) =
  close(x.io)

## ProcessToUser
proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: ProcessToUser, parent: ref RootObj): ProcessToUser =
  let this = new(ProcessToUser)
  let root = if root == nil: cast[ProcessToUser](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawRawBuf1 = this.io.readBytes(int(5))
  this.rawBuf1 = rawRawBuf1.processRotateLeft(3, 1)
  let rawBuf1Io = newKaitaiStringStream(this.rawBuf1)
  this.buf1 = ProcessToUser_JustStr.read(rawBuf1Io, this.root, this)
  result = this

proc fromFile*(_: typedesc[ProcessToUser], filename: string): ProcessToUser =
  ProcessToUser.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessToUserObj) =
  close(x.io)


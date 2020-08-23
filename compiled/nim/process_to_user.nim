import kaitai_struct_nim_runtime
import options

type
  ProcessToUser* = ref object of KaitaiStruct
    `buf1`*: ProcessToUser_JustStr
    `parent`*: KaitaiStruct
    `rawBuf1`*: seq[byte]
    `rawRawBuf1`*: seq[byte]
  ProcessToUser_JustStr* = ref object of KaitaiStruct
    `str`*: string
    `parent`*: ProcessToUser

proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessToUser
proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: KaitaiStruct, parent: ProcessToUser): ProcessToUser_JustStr


proc read*(_: typedesc[ProcessToUser], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessToUser =
  template this: untyped = result
  this = new(ProcessToUser)
  let root = if root == nil: cast[ProcessToUser](this) else: cast[ProcessToUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawRawBuf1Expr = this.io.readBytes(int(5))
  this.rawRawBuf1 = rawRawBuf1Expr
  let rawBuf1Expr = this.rawRawBuf1.processRotateLeft(int(3))
  this.rawBuf1 = rawBuf1Expr
  let rawBuf1Io = newKaitaiStream(rawBuf1Expr)
  let buf1Expr = ProcessToUser_JustStr.read(rawBuf1Io, this.root, this)
  this.buf1 = buf1Expr

proc fromFile*(_: typedesc[ProcessToUser], filename: string): ProcessToUser =
  ProcessToUser.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessToUser_JustStr], io: KaitaiStream, root: KaitaiStruct, parent: ProcessToUser): ProcessToUser_JustStr =
  template this: untyped = result
  this = new(ProcessToUser_JustStr)
  let root = if root == nil: cast[ProcessToUser](this) else: cast[ProcessToUser](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strExpr = encode(this.io.readBytesFull(), "UTF-8")
  this.str = strExpr

proc fromFile*(_: typedesc[ProcessToUser_JustStr], filename: string): ProcessToUser_JustStr =
  ProcessToUser_JustStr.read(newKaitaiFileStream(filename), nil, nil)


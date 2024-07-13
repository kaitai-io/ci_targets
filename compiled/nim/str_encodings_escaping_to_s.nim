import kaitai_struct_nim_runtime
import options

type
  StrEncodingsEscapingToS* = ref object of KaitaiStruct
    `lenOf1`*: uint16
    `str1Raw`*: seq[byte]
    `lenOf2`*: uint16
    `str2Raw`*: seq[byte]
    `lenOf3`*: uint16
    `str3Raw`*: seq[byte]
    `lenOf4`*: uint16
    `str4Raw`*: seq[byte]
    `parent`*: KaitaiStruct
    `str1Inst`: string
    `str1InstFlag`: bool
    `str2Inst`: string
    `str2InstFlag`: bool
    `str3Inst`: string
    `str3InstFlag`: bool
    `str4Inst`: string
    `str4InstFlag`: bool

proc read*(_: typedesc[StrEncodingsEscapingToS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsEscapingToS

proc str1*(this: StrEncodingsEscapingToS): string
proc str2*(this: StrEncodingsEscapingToS): string
proc str3*(this: StrEncodingsEscapingToS): string
proc str4*(this: StrEncodingsEscapingToS): string

proc read*(_: typedesc[StrEncodingsEscapingToS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsEscapingToS =
  template this: untyped = result
  this = new(StrEncodingsEscapingToS)
  let root = if root == nil: cast[StrEncodingsEscapingToS](this) else: cast[StrEncodingsEscapingToS](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr
  let str1RawExpr = this.io.readBytes(int(this.lenOf1))
  this.str1Raw = str1RawExpr
  let lenOf2Expr = this.io.readU2le()
  this.lenOf2 = lenOf2Expr
  let str2RawExpr = this.io.readBytes(int(this.lenOf2))
  this.str2Raw = str2RawExpr
  let lenOf3Expr = this.io.readU2le()
  this.lenOf3 = lenOf3Expr
  let str3RawExpr = this.io.readBytes(int(this.lenOf3))
  this.str3Raw = str3RawExpr
  let lenOf4Expr = this.io.readU2le()
  this.lenOf4 = lenOf4Expr
  let str4RawExpr = this.io.readBytes(int(this.lenOf4))
  this.str4Raw = str4RawExpr

proc str1(this: StrEncodingsEscapingToS): string = 
  if this.str1InstFlag:
    return this.str1Inst
  let str1InstExpr = string(encode(this.str1Raw, "ASCII\\\\x"))
  this.str1Inst = str1InstExpr
  this.str1InstFlag = true
  return this.str1Inst

proc str2(this: StrEncodingsEscapingToS): string = 
  if this.str2InstFlag:
    return this.str2Inst
  let str2InstExpr = string(encode(this.str2Raw, "UTF-8\\'x"))
  this.str2Inst = str2InstExpr
  this.str2InstFlag = true
  return this.str2Inst

proc str3(this: StrEncodingsEscapingToS): string = 
  if this.str3InstFlag:
    return this.str3Inst
  let str3InstExpr = string(encode(this.str3Raw, "SJIS\\\"x"))
  this.str3Inst = str3InstExpr
  this.str3InstFlag = true
  return this.str3Inst

proc str4(this: StrEncodingsEscapingToS): string = 
  if this.str4InstFlag:
    return this.str4Inst
  let str4InstExpr = string(encode(this.str4Raw, "IBM437\\nx"))
  this.str4Inst = str4InstExpr
  this.str4InstFlag = true
  return this.str4Inst

proc fromFile*(_: typedesc[StrEncodingsEscapingToS], filename: string): StrEncodingsEscapingToS =
  StrEncodingsEscapingToS.read(newKaitaiFileStream(filename), nil, nil)


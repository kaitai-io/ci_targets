import kaitai_struct_nim_runtime
import options

type
  TermStrzUtf16V2* = ref object of KaitaiStruct
    `s1`*: string
    `s2`*: string
    `s3`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[TermStrzUtf16V2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrzUtf16V2


proc read*(_: typedesc[TermStrzUtf16V2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrzUtf16V2 =
  template this: untyped = result
  this = new(TermStrzUtf16V2)
  let root = if root == nil: cast[TermStrzUtf16V2](this) else: cast[TermStrzUtf16V2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], false, true, true), "UTF-16LE")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], true, true, true), "UTF-16LE")
  this.s2 = s2Expr
  let s3Expr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], false, false, true), "UTF-16LE")
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStrzUtf16V2], filename: string): TermStrzUtf16V2 =
  TermStrzUtf16V2.read(newKaitaiFileStream(filename), nil, nil)


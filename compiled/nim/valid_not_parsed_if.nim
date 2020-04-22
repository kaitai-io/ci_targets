import kaitai_struct_nim_runtime
import options

type
  ValidNotParsedIf* = ref object of KaitaiStruct
    notParsed*: uint8
    parsed*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidNotParsedIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidNotParsedIf


proc read*(_: typedesc[ValidNotParsedIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidNotParsedIf =
  template this: untyped = result
  this = new(ValidNotParsedIf)
  let root = if root == nil: cast[ValidNotParsedIf](this) else: cast[ValidNotParsedIf](root)
  this.io = io
  this.root = root
  this.parent = parent

  if false:
    let notParsedExpr = this.io.readU1()
    this.notParsed = notParsedExpr
  if true:
    let parsedExpr = this.io.readU1()
    this.parsed = parsedExpr

proc fromFile*(_: typedesc[ValidNotParsedIf], filename: string): ValidNotParsedIf =
  ValidNotParsedIf.read(newKaitaiFileStream(filename), nil, nil)


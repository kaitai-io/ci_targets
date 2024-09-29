import kaitai_struct_nim_runtime
import options

type
  StrLiteralsLatin1* = ref object of KaitaiStruct
    `lenParsed`*: uint16
    `parsed`*: string
    `parent`*: KaitaiStruct
    `parsedEqLiteralInst`: bool
    `parsedEqLiteralInstFlag`: bool

proc read*(_: typedesc[StrLiteralsLatin1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiteralsLatin1

proc parsedEqLiteral*(this: StrLiteralsLatin1): bool

proc read*(_: typedesc[StrLiteralsLatin1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiteralsLatin1 =
  template this: untyped = result
  this = new(StrLiteralsLatin1)
  let root = if root == nil: cast[StrLiteralsLatin1](this) else: cast[StrLiteralsLatin1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenParsedExpr = this.io.readU2le()
  this.lenParsed = lenParsedExpr
  let parsedExpr = encode(this.io.readBytes(int(this.lenParsed)), "UTF-8")
  this.parsed = parsedExpr

proc parsedEqLiteral(this: StrLiteralsLatin1): bool = 
  if this.parsedEqLiteralInstFlag:
    return this.parsedEqLiteralInst
  let parsedEqLiteralInstExpr = bool(this.parsed == "\243")
  this.parsedEqLiteralInst = parsedEqLiteralInstExpr
  this.parsedEqLiteralInstFlag = true
  return this.parsedEqLiteralInst

proc fromFile*(_: typedesc[StrLiteralsLatin1], filename: string): StrLiteralsLatin1 =
  StrLiteralsLatin1.read(newKaitaiFileStream(filename), nil, nil)


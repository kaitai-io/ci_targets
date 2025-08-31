import kaitai_struct_nim_runtime
import options

type
  ExprIfIntOps* = ref object of KaitaiStruct
    `key`*: uint64
    `skip`*: seq[byte]
    `bytes`*: seq[byte]
    `items`*: seq[int8]
    `parent`*: KaitaiStruct
    `rawBytes`*: seq[byte]
    `bytesSubKeyInst`: uint8
    `bytesSubKeyInstFlag`: bool
    `itemsSubKeyInst`: int8
    `itemsSubKeyInstFlag`: bool

proc read*(_: typedesc[ExprIfIntOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntOps

proc bytesSubKey*(this: ExprIfIntOps): uint8
proc itemsSubKey*(this: ExprIfIntOps): int8

proc read*(_: typedesc[ExprIfIntOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntOps =
  template this: untyped = result
  this = new(ExprIfIntOps)
  let root = if root == nil: cast[ExprIfIntOps](this) else: cast[ExprIfIntOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  if true:
    let keyExpr = this.io.readU8le()
    this.key = keyExpr
  let skipExpr = this.io.readBytes(int(8))
  this.skip = skipExpr
  let rawBytesExpr = this.io.readBytes(int(8))
  this.rawBytes = rawBytesExpr
  let bytesExpr = this.rawBytes.processXor(this.key)
  this.bytes = bytesExpr
  for i in 0 ..< int(4):
    let it = this.io.readS1()
    this.items.add(it)

proc bytesSubKey(this: ExprIfIntOps): uint8 = 
  if this.bytesSubKeyInstFlag:
    return this.bytesSubKeyInst
  let bytesSubKeyInstExpr = uint8(this.bytes[this.key])
  this.bytesSubKeyInst = bytesSubKeyInstExpr
  this.bytesSubKeyInstFlag = true
  return this.bytesSubKeyInst

proc itemsSubKey(this: ExprIfIntOps): int8 = 
  if this.itemsSubKeyInstFlag:
    return this.itemsSubKeyInst
  let itemsSubKeyInstExpr = int8(this.items[this.key])
  this.itemsSubKeyInst = itemsSubKeyInstExpr
  this.itemsSubKeyInstFlag = true
  return this.itemsSubKeyInst

proc fromFile*(_: typedesc[ExprIfIntOps], filename: string): ExprIfIntOps =
  ExprIfIntOps.read(newKaitaiFileStream(filename), nil, nil)


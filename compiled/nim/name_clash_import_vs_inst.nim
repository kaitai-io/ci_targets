import kaitai_struct_nim_runtime
import options
import integers

type
  NameClashImportVsInst* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `integersInst`: Integers
    `integersInstFlag`: bool
    `stdInst`: int
    `stdInstFlag`: bool

proc read*(_: typedesc[NameClashImportVsInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NameClashImportVsInst

proc integers*(this: NameClashImportVsInst): Integers
proc std*(this: NameClashImportVsInst): int

proc read*(_: typedesc[NameClashImportVsInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NameClashImportVsInst =
  template this: untyped = result
  this = new(NameClashImportVsInst)
  let root = if root == nil: cast[NameClashImportVsInst](this) else: cast[NameClashImportVsInst](root)
  this.io = io
  this.root = root
  this.parent = parent


proc integers(this: NameClashImportVsInst): Integers = 
  if this.integersInstFlag:
    return this.integersInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let integersInstExpr = Integers.read(this.io, nil, nil)
  this.integersInst = integersInstExpr
  this.io.seek(pos)
  this.integersInstFlag = true
  return this.integersInst

proc std(this: NameClashImportVsInst): int = 
  if this.stdInstFlag:
    return this.stdInst
  let stdInstExpr = int(1 + 2)
  this.stdInst = stdInstExpr
  this.stdInstFlag = true
  return this.stdInst

proc fromFile*(_: typedesc[NameClashImportVsInst], filename: string): NameClashImportVsInst =
  NameClashImportVsInst.read(newKaitaiFileStream(filename), nil, nil)


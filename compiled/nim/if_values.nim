import kaitai_struct_nim_runtime
import options

type
  IfValues* = ref object of KaitaiStruct
    `codes`*: seq[IfValues_Code]
    `parent`*: KaitaiStruct
  IfValues_Code* = ref object of KaitaiStruct
    `opcode`*: uint8
    `parent`*: IfValues
    `halfOpcodeInst`: int
    `halfOpcodeInstFlag`: bool

proc read*(_: typedesc[IfValues], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfValues
proc read*(_: typedesc[IfValues_Code], io: KaitaiStream, root: KaitaiStruct, parent: IfValues): IfValues_Code

proc halfOpcode*(this: IfValues_Code): int

proc read*(_: typedesc[IfValues], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfValues =
  template this: untyped = result
  this = new(IfValues)
  let root = if root == nil: cast[IfValues](this) else: cast[IfValues](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(3):
    let it = IfValues_Code.read(this.io, this.root, this)
    this.codes.add(it)

proc fromFile*(_: typedesc[IfValues], filename: string): IfValues =
  IfValues.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IfValues_Code], io: KaitaiStream, root: KaitaiStruct, parent: IfValues): IfValues_Code =
  template this: untyped = result
  this = new(IfValues_Code)
  let root = if root == nil: cast[IfValues](this) else: cast[IfValues](root)
  this.io = io
  this.root = root
  this.parent = parent

  let opcodeExpr = this.io.readU1()
  this.opcode = opcodeExpr

proc halfOpcode(this: IfValues_Code): int = 
  if this.halfOpcodeInstFlag:
    return this.halfOpcodeInst
  if this.opcode %%% 2 == 0:
    let halfOpcodeInstExpr = int(this.opcode div 2)
    this.halfOpcodeInst = halfOpcodeInstExpr
  this.halfOpcodeInstFlag = true
  return this.halfOpcodeInst

proc fromFile*(_: typedesc[IfValues_Code], filename: string): IfValues_Code =
  IfValues_Code.read(newKaitaiFileStream(filename), nil, nil)


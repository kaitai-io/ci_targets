import kaitai_struct_nim_runtime
import options

type
  IfValues_Code* = ref IfValues_CodeObj
  IfValues_CodeObj* = object
    opcode*: uint8
    io*: KaitaiStream
    root*: IfValues
    parent*: IfValues
    halfOpcodeInst*: Option[int]
  IfValues* = ref IfValuesObj
  IfValuesObj* = object
    codes*: seq[IfValues_Code]
    io*: KaitaiStream
    root*: IfValues
    parent*: ref RootObj

## IfValues_Code
proc halfOpcode*(this: IfValues_Code): int
proc halfOpcode(this: IfValues_Code): int = 
  if isSome(this.halfOpcodeInst):
    return get(this.halfOpcodeInst)
  if (this.opcode %%% 2) == 0:
    this.halfOpcodeInst = some((this.opcode / 2))
  return get(this.halfOpcodeInst)

proc read*(_: typedesc[IfValues_Code], io: KaitaiStream, root: IfValues, parent: IfValues): IfValues_Code =
  let this = new(IfValues_Code)
  let root = if root == nil: cast[IfValues](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcode = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[IfValues_Code], filename: string): IfValues_Code =
  IfValues_Code.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValues_CodeObj) =
  close(x.io)

## IfValues
proc read*(_: typedesc[IfValues], io: KaitaiStream, root: IfValues, parent: ref RootObj): IfValues =
  let this = new(IfValues)
  let root = if root == nil: cast[IfValues](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  codes = newSeq[IfValues_Code](3)
  for i in 0 ..< 3:
    this.codes.add(IfValues_Code.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[IfValues], filename: string): IfValues =
  IfValues.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValuesObj) =
  close(x.io)


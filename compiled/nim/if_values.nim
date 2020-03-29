import kaitai_struct_nim_runtime

type
  IfValues_Code* = ref IfValues_CodeObj
  IfValues_CodeObj* = object
    opcode*: uint8
    io*: KaitaiStream
    root*: IfValues
    parent*: IfValues
  IfValues* = ref IfValuesObj
  IfValuesObj* = object
    codes*: seq[IfValues_Code]
    io*: KaitaiStream
    root*: IfValues
    parent*: ref RootObj

### IfValues_Code ###
proc read*(_: typedesc[IfValues_Code], io: KaitaiStream, root: IfValues, parent: IfValues): IfValues_Code =
  result = new(IfValues_Code)
  let root = if root == nil: cast[IfValues](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let opcode = io.readU1()
  result.opcode = opcode

proc fromFile*(_: typedesc[IfValues_Code], filename: string): IfValues_Code =
  IfValues_Code.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValues_CodeObj) =
  close(x.io)

### IfValues ###
proc read*(_: typedesc[IfValues], io: KaitaiStream, root: IfValues, parent: ref RootObj): IfValues =
  result = new(IfValues)
  let root = if root == nil: cast[IfValues](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  codes = newSeq[IfValues_Code](3)
  for i in 0 ..< 3:
    codes.add(IfValues_Code.read(io, result, root))

proc fromFile*(_: typedesc[IfValues], filename: string): IfValues =
  IfValues.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValuesObj) =
  close(x.io)


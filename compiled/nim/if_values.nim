import kaitai_struct_nim_runtime

type
  IfValuescode* = ref IfValuescodeObj
  IfValuescodeObj* = object
    codes*: seq[Code]
    io*: KaitaiStream
    root*: IfValues
    parent*: ref RootObj
  IfValues* = ref IfValuesObj
  IfValuesObj* = object
    codes*: seq[Code]
    io*: KaitaiStream
    root*: IfValues
    parent*: ref RootObj

### IfValuescode ###
proc read*(_: typedesc[IfValuescode], io: KaitaiStream, root: IfValues, parent: IfValues): IfValuescode =
  result = new(IfValuescode)
  let root = if root == nil: cast[IfValues](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcode = result.io.readU1()

proc fromFile*(_: typedesc[IfValuescode], filename: string): IfValuescode =
  IfValuescode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValuescodeObj) =
  close(x.io)

### IfValues ###
proc read*(_: typedesc[IfValues], io: KaitaiStream, root: IfValues, parent: ref RootObj): IfValues =
  result = new(IfValues)
  let root = if root == nil: cast[IfValues](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  codes = newSeq[Code](3)
  for i in 0 ..< 3:
    result.codes.add(Code.read(result.io, result, root))

proc fromFile*(_: typedesc[IfValues], filename: string): IfValues =
  IfValues.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfValuesObj) =
  close(x.io)


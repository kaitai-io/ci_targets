import kaitai_struct_nim_runtime



type
  ValidNotParsedIf* = ref ValidNotParsedIfObj
  ValidNotParsedIfObj* = object
    io: KaitaiStream
    root*: ValidNotParsedIf
    parent*: ref RootObj
    notParsed*: uint8
    parsed*: uint8

# ValidNotParsedIf
proc read*(_: typedesc[ValidNotParsedIf], io: KaitaiStream, root: ValidNotParsedIf, parent: ref RootObj): owned ValidNotParsedIf =
  result = new(ValidNotParsedIf)
  let root = if root == nil: cast[ValidNotParsedIf](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let notParsed = readU1(io)
  result.notParsed = notParsed
  let parsed = readU1(io)
  result.parsed = parsed


proc fromFile*(_: typedesc[ValidNotParsedIf], filename: string): owned ValidNotParsedIf =
  ValidNotParsedIf.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidNotParsedIfObj) =
  close(x.io)


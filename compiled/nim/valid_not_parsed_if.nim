import kaitai_struct_nim_runtime

type
  ValidNotParsedIf* = ref ValidNotParsedIfObj
  ValidNotParsedIfObj* = object
    notParsed*: uint8
    parsed*: uint8
    io*: KaitaiStream
    root*: ValidNotParsedIf
    parent*: ref RootObj

### ValidNotParsedIf ###
proc read*(_: typedesc[ValidNotParsedIf], io: KaitaiStream, root: ValidNotParsedIf, parent: ref RootObj): ValidNotParsedIf =
  result = new(ValidNotParsedIf)
  let root = if root == nil: cast[ValidNotParsedIf](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if false:
    let notParsed = io.readU1()
    result.notParsed = notParsed
  if true:
    let parsed = io.readU1()
    result.parsed = parsed

proc fromFile*(_: typedesc[ValidNotParsedIf], filename: string): ValidNotParsedIf =
  ValidNotParsedIf.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidNotParsedIfObj) =
  close(x.io)


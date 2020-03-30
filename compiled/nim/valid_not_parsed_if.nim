import kaitai_struct_nim_runtime
import options

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
  let this = new(ValidNotParsedIf)
  let root = if root == nil: cast[ValidNotParsedIf](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if false:
    let notParsed = this.io.readU1()
    this.notParsed = notParsed
  if true:
    let parsed = this.io.readU1()
    this.parsed = parsed
  result = this

proc fromFile*(_: typedesc[ValidNotParsedIf], filename: string): ValidNotParsedIf =
  ValidNotParsedIf.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidNotParsedIfObj) =
  close(x.io)


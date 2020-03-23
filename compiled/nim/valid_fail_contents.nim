import kaitai_struct_nim_runtime

type
  ValidFailContents* = ref ValidFailContentsObj
  ValidFailContentsObj* = object
    foo*: string
    io*: KaitaiStream
    root*: ValidFailContents
    parent*: ref RootObj

### ValidFailContents ###
proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: ValidFailContents, parent: ref RootObj): ValidFailContents =
  result = new(ValidFailContents)
  let root = if root == nil: cast[ValidFailContents](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readBytes(2)

proc fromFile*(_: typedesc[ValidFailContents], filename: string): ValidFailContents =
  ValidFailContents.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailContentsObj) =
  close(x.io)


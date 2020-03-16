import kaitai_struct_nim_runtime



type
  ValidFailContents* = ref ValidFailContentsObj
  ValidFailContentsObj* = object
    io: KaitaiStream
    root*: ValidFailContents
    parent*: ref RootObj
    foo*: seq[byte]

# ValidFailContents
proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: ValidFailContents, parent: ref RootObj): owned ValidFailContents =
  result = new(ValidFailContents)
  let root = if root == nil: cast[ValidFailContents](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readBytes(io, int(2))
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailContents], filename: string): owned ValidFailContents =
  ValidFailContents.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailContentsObj) =
  close(x.io)


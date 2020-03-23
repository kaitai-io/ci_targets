import kaitai_struct_nim_runtime

type
  FixedContents* = ref FixedContentsObj
  FixedContentsObj* = object
    normal*: string
    highBit8*: string
    io*: KaitaiStream
    root*: FixedContents
    parent*: ref RootObj

### FixedContents ###
proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: FixedContents, parent: ref RootObj): FixedContents =
  result = new(FixedContents)
  let root = if root == nil: cast[FixedContents](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.normal = result.io.readBytes(6)
  result.highBit8 = result.io.readBytes(2)

proc fromFile*(_: typedesc[FixedContents], filename: string): FixedContents =
  FixedContents.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedContentsObj) =
  close(x.io)


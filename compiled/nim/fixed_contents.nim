import ../../../runtime/nim/kaitai_struct_nim_runtime



type
  FixedContents* = ref FixedContentsObj
  FixedContentsObj* = object
    io: KaitaiStream
    root*: FixedContents
    parent*: ref RootObj
    normal*: seq[byte]
    highBit8*: seq[byte]

# FixedContents
proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: FixedContents, parent: ref RootObj): owned FixedContents =
  result = new(FixedContents)
  let root = if root == nil: cast[FixedContents](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let normal = readBytes(io, int(6))
  result.normal = normal
  let highBit8 = readBytes(io, int(2))
  result.highBit8 = highBit8


proc fromFile*(_: typedesc[FixedContents], filename: string): owned FixedContents =
  FixedContents.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var FixedContentsObj) =
  close(x.io)


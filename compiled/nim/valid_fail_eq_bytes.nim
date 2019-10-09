import ../../runtime/nim/kaitai



type
  ValidFailEqBytes* = ref ValidFailEqBytesObj
  ValidFailEqBytesObj* = object
    io: KaitaiStream
    root*: ValidFailEqBytes
    parent*: ref RootObj
    foo*: seq[byte]

# ValidFailEqBytes
proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: ValidFailEqBytes, parent: ref RootObj): owned ValidFailEqBytes =
  result = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.foo = readBytes(io, int(2))

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): owned ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqBytesObj) =
  close(x.io)


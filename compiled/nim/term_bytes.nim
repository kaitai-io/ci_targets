import kaitai_struct_nim_runtime

type
  TermBytes* = ref TermBytesObj
  TermBytesObj* = object
    s1*: string
    s2*: string
    s3*: string
    io*: KaitaiStream
    root*: TermBytes
    parent*: ref RootObj

### TermBytes ###
proc read*(_: typedesc[TermBytes], io: KaitaiStream, root: TermBytes, parent: ref RootObj): TermBytes =
  result = new(TermBytes)
  let root = if root == nil: cast[TermBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.s1 = result.io.readBytesTerm(124, false, true, true)
  result.s2 = result.io.readBytesTerm(124, false, false, true)
  result.s3 = result.io.readBytesTerm(64, true, true, true)

proc fromFile*(_: typedesc[TermBytes], filename: string): TermBytes =
  TermBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TermBytesObj) =
  close(x.io)


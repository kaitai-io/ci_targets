import kaitai_struct_nim_runtime
import encodings

type
  RepeatUntilS4* = ref RepeatUntilS4Obj
  RepeatUntilS4Obj* = object
    entries*: seq[int32]
    afterall*: string
    io*: KaitaiStream
    root*: RepeatUntilS4
    parent*: ref RootObj

### RepeatUntilS4 ###
proc read*(_: typedesc[RepeatUntilS4], io: KaitaiStream, root: RepeatUntilS4, parent: ref RootObj): RepeatUntilS4 =
  result = new(RepeatUntilS4)
  let root = if root == nil: cast[RepeatUntilS4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  entries = newSeq[int32]()
  block:
    int32 _;
    var i: int
    while true:
      let _ = io.readS4le()
      entries.add(_)
      if _ == -1:
        break
      inc i
    let afterall = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
    result.afterall = afterall

  proc fromFile*(_: typedesc[RepeatUntilS4], filename: string): RepeatUntilS4 =
    RepeatUntilS4.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilS4Obj) =
    close(x.io)


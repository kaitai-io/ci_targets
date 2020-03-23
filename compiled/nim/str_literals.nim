import kaitai_struct_nim_runtime

type
  StrLiterals* = ref StrLiteralsObj
  StrLiteralsObj* = object
    io*: KaitaiStream
    root*: StrLiterals
    parent*: ref RootObj

### StrLiterals ###
proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: StrLiterals, parent: ref RootObj): StrLiterals =
  result = new(StrLiterals)
  let root = if root == nil: cast[StrLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrLiterals], filename: string): StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrLiteralsObj) =
  close(x.io)


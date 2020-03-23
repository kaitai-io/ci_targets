import kaitai_struct_nim_runtime

type
  StrLiterals2* = ref StrLiterals2Obj
  StrLiterals2Obj* = object
    io*: KaitaiStream
    root*: StrLiterals2
    parent*: ref RootObj

### StrLiterals2 ###
proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: StrLiterals2, parent: ref RootObj): StrLiterals2 =
  result = new(StrLiterals2)
  let root = if root == nil: cast[StrLiterals2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[StrLiterals2], filename: string): StrLiterals2 =
  StrLiterals2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrLiterals2Obj) =
  close(x.io)


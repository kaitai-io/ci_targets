import kaitai_struct_nim_runtime

type
  ExprSizeofType1blocksubblock* = ref ExprSizeofType1blocksubblockObj
  ExprSizeofType1blocksubblockObj* = object
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1block* = ref ExprSizeofType1blockObj
  ExprSizeofType1blockObj* = object
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1* = ref ExprSizeofType1Obj
  ExprSizeofType1Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj

### ExprSizeofType1blocksubblock ###
proc read*(_: typedesc[ExprSizeofType1blocksubblock], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1blocksubblock =
  result = new(ExprSizeofType1blocksubblock)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readBytes(4)

proc fromFile*(_: typedesc[ExprSizeofType1blocksubblock], filename: string): ExprSizeofType1blocksubblock =
  ExprSizeofType1blocksubblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1blocksubblockObj) =
  close(x.io)

### ExprSizeofType1block ###
proc read*(_: typedesc[ExprSizeofType1block], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1block =
  result = new(ExprSizeofType1block)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readU1()
  result.b = result.io.readU4le()
  result.c = result.io.readBytes(2)
  result.d = Subblock.read(result.io, result, root)

proc fromFile*(_: typedesc[ExprSizeofType1block], filename: string): ExprSizeofType1block =
  ExprSizeofType1block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1blockObj) =
  close(x.io)

### ExprSizeofType1 ###
proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1 =
  result = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1Obj) =
  close(x.io)


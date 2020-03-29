import kaitai_struct_nim_runtime
import encodings

type
  ExprArray* = ref ExprArrayObj
  ExprArrayObj* = object
    aint*: seq[uint32]
    afloat*: seq[float64]
    astr*: seq[string]
    io*: KaitaiStream
    root*: ExprArray
    parent*: ref RootObj

### ExprArray ###
proc read*(_: typedesc[ExprArray], io: KaitaiStream, root: ExprArray, parent: ref RootObj): ExprArray =
  result = new(ExprArray)
  let root = if root == nil: cast[ExprArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  aint = newSeq[uint32](4)
  for i in 0 ..< 4:
    aint.add(io.readU4le())
  afloat = newSeq[float64](3)
  for i in 0 ..< 3:
    afloat.add(io.readF8le())
  astr = newSeq[string](3)
  for i in 0 ..< 3:
    astr.add(convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))

proc fromFile*(_: typedesc[ExprArray], filename: string): ExprArray =
  ExprArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprArrayObj) =
  close(x.io)


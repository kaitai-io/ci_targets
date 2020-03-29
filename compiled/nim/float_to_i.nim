import kaitai_struct_nim_runtime

type
  FloatToI* = ref FloatToIObj
  FloatToIObj* = object
    singleValue*: float32
    doubleValue*: float64
    io*: KaitaiStream
    root*: FloatToI
    parent*: ref RootObj

### FloatToI ###
proc read*(_: typedesc[FloatToI], io: KaitaiStream, root: FloatToI, parent: ref RootObj): FloatToI =
  result = new(FloatToI)
  let root = if root == nil: cast[FloatToI](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let singleValue = io.readF4le()
  result.singleValue = singleValue
  let doubleValue = io.readF8le()
  result.doubleValue = doubleValue

proc fromFile*(_: typedesc[FloatToI], filename: string): FloatToI =
  FloatToI.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FloatToIObj) =
  close(x.io)


import ../../../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  ValidFailInst* = ref ValidFailInstObj
  ValidFailInstObj* = object
    io: KaitaiStream
    root*: ValidFailInst
    parent*: ref RootObj
    a*: uint8
    instInst: proc(): uint8

# ValidFailInst
template `.`*(a: ValidFailInst, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ValidFailInst], io: KaitaiStream, root: ValidFailInst, parent: ref RootObj): owned ValidFailInst =
  result = new(ValidFailInst)
  let root = if root == nil: cast[ValidFailInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let a = readU1(io)
  result.a = a

  var instVal: Option[uint8]
  let inst = proc(): uint8 =
    if isNone(instVal):
      instVal = readU1(io)
    get(instVal)
  result.instInst = inst

proc fromFile*(_: typedesc[ValidFailInst], filename: string): owned ValidFailInst =
  ValidFailInst.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailInstObj) =
  close(x.io)


import kaitai_struct_nim_runtime
import options
import encodings

type
  InstanceStd* = ref InstanceStdObj
  InstanceStdObj* = object
    io*: KaitaiStream
    root*: InstanceStd
    parent*: ref RootObj
    headerInst*: Option[string]

## InstanceStd
proc header*(this: InstanceStd): string
proc header(this: InstanceStd): string = 
  if isSome(this.headerInst):
    return get(this.headerInst)
  let pos = this.io.pos()
  this.io.seek(2)
  this.headerInst = some(convert(this.io.readBytes(int(5)), srcEncoding = "ASCII"))
  this.io.seek(pos)
  return get(this.headerInst)

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: InstanceStd, parent: ref RootObj): InstanceStd =
  let this = new(InstanceStd)
  let root = if root == nil: cast[InstanceStd](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[InstanceStd], filename: string): InstanceStd =
  InstanceStd.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceStdObj) =
  close(x.io)


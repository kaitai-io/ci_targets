import kaitai_struct_nim_runtime
import options

type
  IfInstances* = ref IfInstancesObj
  IfInstancesObj* = object
    io*: KaitaiStream
    root*: IfInstances
    parent*: ref RootObj
    neverHappensInst*: Option[uint8]

### IfInstances ###
proc neverHappens*(this: IfInstances): uint8
proc neverHappens(this: IfInstances): uint8 = 
  if isSome(this.neverHappensInst):
    return get(this.neverHappensInst)
  if false:
    let pos = this.io.pos()
    this.io.seek(100500)
    let neverHappensInst = this.io.readU1()
    this.neverHappensInst = some(neverHappensInst)
    this.io.seek(pos)
  return get(this.neverHappensInst)

proc read*(_: typedesc[IfInstances], io: KaitaiStream, root: IfInstances, parent: ref RootObj): IfInstances =
  let this = new(IfInstances)
  let root = if root == nil: cast[IfInstances](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[IfInstances], filename: string): IfInstances =
  IfInstances.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfInstancesObj) =
  close(x.io)


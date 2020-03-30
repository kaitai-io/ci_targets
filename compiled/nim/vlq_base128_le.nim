import kaitai_struct_nim_runtime
import options

type
  VlqBase128Le_Group* = ref VlqBase128Le_GroupObj
  VlqBase128Le_GroupObj* = object
    b*: uint8
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: VlqBase128Le
    hasNextInst*: Option[bool]
    valueInst*: Option[int]
  VlqBase128Le* = ref VlqBase128LeObj
  VlqBase128LeObj* = object
    groups*: seq[VlqBase128Le_Group]
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: ref RootObj
    lenInst*: Option[int]
    valueInst*: Option[int]

## VlqBase128Le_Group
proc hasNext*(this: VlqBase128Le_Group): bool
proc value*(this: VlqBase128Le_Group): int
proc hasNext(this: VlqBase128Le_Group): bool = 
  if isSome(this.hasNextInst):
    return get(this.hasNextInst)
  this.hasNextInst = some((this.b and 128) != 0)
  return get(this.hasNextInst)

proc value(this: VlqBase128Le_Group): int = 
  if isSome(this.valueInst):
    return get(this.valueInst)
  this.valueInst = some((this.b and 127))
  return get(this.valueInst)

proc read*(_: typedesc[VlqBase128Le_Group], io: KaitaiStream, root: VlqBase128Le, parent: VlqBase128Le): VlqBase128Le_Group =
  let this = new(VlqBase128Le_Group)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.b = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[VlqBase128Le_Group], filename: string): VlqBase128Le_Group =
  VlqBase128Le_Group.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var VlqBase128Le_GroupObj) =
  close(x.io)

## VlqBase128Le
proc len*(this: VlqBase128Le): int
proc value*(this: VlqBase128Le): int
proc len(this: VlqBase128Le): int = 
  if isSome(this.lenInst):
    return get(this.lenInst)
  this.lenInst = some(len(this.groups))
  return get(this.lenInst)

proc value(this: VlqBase128Le): int = 
  if isSome(this.valueInst):
    return get(this.valueInst)
  this.valueInst = some((((((((this.groups[0].value + (if this.len >= 2: (this.groups[1].value shl 7) else: 0)) + (if this.len >= 3: (this.groups[2].value shl 14) else: 0)) + (if this.len >= 4: (this.groups[3].value shl 21) else: 0)) + (if this.len >= 5: (this.groups[4].value shl 28) else: 0)) + (if this.len >= 6: (this.groups[5].value shl 35) else: 0)) + (if this.len >= 7: (this.groups[6].value shl 42) else: 0)) + (if this.len >= 8: (this.groups[7].value shl 49) else: 0)))
  return get(this.valueInst)

proc read*(_: typedesc[VlqBase128Le], io: KaitaiStream, root: VlqBase128Le, parent: ref RootObj): VlqBase128Le =
  let this = new(VlqBase128Le)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.groups = newSeq[VlqBase128Le_Group]()
  block:
    VlqBase128Le_Group _;
    var i: int
    while true:
      let _ = VlqBase128Le_Group.read(this.io, this.root, this)
      this.groups.add(_)
      if not(this._.hasNext):
        break
      inc i
    result = this

  proc fromFile*(_: typedesc[VlqBase128Le], filename: string): VlqBase128Le =
    VlqBase128Le.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var VlqBase128LeObj) =
    close(x.io)


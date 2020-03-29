import kaitai_struct_nim_runtime

type
  VlqBase128Le_Group* = ref VlqBase128Le_GroupObj
  VlqBase128Le_GroupObj* = object
    b*: uint8
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: VlqBase128Le
  VlqBase128Le* = ref VlqBase128LeObj
  VlqBase128LeObj* = object
    groups*: seq[VlqBase128Le_Group]
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: ref RootObj

### VlqBase128Le_Group ###
proc read*(_: typedesc[VlqBase128Le_Group], io: KaitaiStream, root: VlqBase128Le, parent: VlqBase128Le): VlqBase128Le_Group =
  result = new(VlqBase128Le_Group)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let b = io.readU1()
  result.b = b

proc fromFile*(_: typedesc[VlqBase128Le_Group], filename: string): VlqBase128Le_Group =
  VlqBase128Le_Group.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var VlqBase128Le_GroupObj) =
  close(x.io)

### VlqBase128Le ###
proc read*(_: typedesc[VlqBase128Le], io: KaitaiStream, root: VlqBase128Le, parent: ref RootObj): VlqBase128Le =
  result = new(VlqBase128Le)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  groups = newSeq[VlqBase128Le_Group]()
  block:
    VlqBase128Le_Group _;
    var i: int
    while true:
      let _ = VlqBase128Le_Group.read(io, result, root)
      groups.add(_)
      if not(_.hasNext):
        break
      inc i

  proc fromFile*(_: typedesc[VlqBase128Le], filename: string): VlqBase128Le =
    VlqBase128Le.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var VlqBase128LeObj) =
    close(x.io)


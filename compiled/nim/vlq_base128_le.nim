import kaitai_struct_nim_runtime

type
  VlqBase128Legroup* = ref VlqBase128LegroupObj
  VlqBase128LegroupObj* = object
    groups*: seq[Group]
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: ref RootObj
  VlqBase128Le* = ref VlqBase128LeObj
  VlqBase128LeObj* = object
    groups*: seq[Group]
    io*: KaitaiStream
    root*: VlqBase128Le
    parent*: ref RootObj

### VlqBase128Legroup ###
proc read*(_: typedesc[VlqBase128Legroup], io: KaitaiStream, root: VlqBase128Le, parent: VlqBase128Le): VlqBase128Legroup =
  result = new(VlqBase128Legroup)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b = result.io.readU1()

proc fromFile*(_: typedesc[VlqBase128Legroup], filename: string): VlqBase128Legroup =
  VlqBase128Legroup.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var VlqBase128LegroupObj) =
  close(x.io)

### VlqBase128Le ###
proc read*(_: typedesc[VlqBase128Le], io: KaitaiStream, root: VlqBase128Le, parent: ref RootObj): VlqBase128Le =
  result = new(VlqBase128Le)
  let root = if root == nil: cast[VlqBase128Le](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.groups = newSeq[Group]()
  block:
    Group _;
    var i: int
    while true:
      let _ = Group.read(result.io, result, root)
      result.groups.add(_)
      if not(_.hasNext):
        break
      inc i

  proc fromFile*(_: typedesc[VlqBase128Le], filename: string): VlqBase128Le =
    VlqBase128Le.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var VlqBase128LeObj) =
    close(x.io)


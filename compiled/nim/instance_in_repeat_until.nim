import kaitai_struct_nim_runtime
import options

type
  InstanceInRepeatUntil* = ref object of KaitaiStruct
    `entries`*: seq[int16]
    `parent`*: KaitaiStruct
    `untilValInst`: int16
    `untilValInstFlag`: bool

proc read*(_: typedesc[InstanceInRepeatUntil], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInRepeatUntil

proc untilVal*(this: InstanceInRepeatUntil): int16

proc read*(_: typedesc[InstanceInRepeatUntil], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInRepeatUntil =
  template this: untyped = result
  this = new(InstanceInRepeatUntil)
  let root = if root == nil: cast[InstanceInRepeatUntil](this) else: cast[InstanceInRepeatUntil](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readS2le()
      this.entries.add(it)
      if it == this.untilVal:
        break
      inc i

proc untilVal(this: InstanceInRepeatUntil): int16 = 
  if this.untilValInstFlag:
    return this.untilValInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 12))
  let untilValInstExpr = this.io.readS2le()
  this.untilValInst = untilValInstExpr
  this.io.seek(pos)
  this.untilValInstFlag = true
  return this.untilValInst

proc fromFile*(_: typedesc[InstanceInRepeatUntil], filename: string): InstanceInRepeatUntil =
  InstanceInRepeatUntil.read(newKaitaiFileStream(filename), nil, nil)


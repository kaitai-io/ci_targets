import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatInst* = ref object of KaitaiStruct
    `a`*: seq[byte]
    `parent`*: KaitaiStruct
    `instInst`: seq[uint32]
    `instInstFlag`: bool

proc read*(_: typedesc[ValidFailRepeatInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatInst

proc inst*(this: ValidFailRepeatInst): seq[uint32]

proc read*(_: typedesc[ValidFailRepeatInst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatInst =
  template this: untyped = result
  this = new(ValidFailRepeatInst)
  let root = if root == nil: cast[ValidFailRepeatInst](this) else: cast[ValidFailRepeatInst](root)
  this.io = io
  this.root = root
  this.parent = parent

  if len(this.inst) == 0:
    let aExpr = this.io.readBytes(int(0))
    this.a = aExpr

proc inst(this: ValidFailRepeatInst): seq[uint32] = 
  if this.instInstFlag:
    return this.instInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readU4be()
      this.instInst.add(it)
      inc i
  this.io.seek(pos)
  this.instInstFlag = true
  return this.instInst

proc fromFile*(_: typedesc[ValidFailRepeatInst], filename: string): ValidFailRepeatInst =
  ValidFailRepeatInst.read(newKaitaiFileStream(filename), nil, nil)


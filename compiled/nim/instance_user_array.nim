import kaitai_struct_nim_runtime
import options

type
  InstanceUserArray* = ref object of KaitaiStruct
    `ofs`*: uint32
    `entrySize`*: uint32
    `qtyEntries`*: uint32
    `parent`*: KaitaiStruct
    `rawUserEntriesInst`*: seq[seq[byte]]
    `userEntriesInst`: seq[InstanceUserArray_Entry]
    `userEntriesInstFlag`: bool
  InstanceUserArray_Entry* = ref object of KaitaiStruct
    `word1`*: uint16
    `word2`*: uint16
    `parent`*: InstanceUserArray

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceUserArray
proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceUserArray): InstanceUserArray_Entry

proc userEntries*(this: InstanceUserArray): seq[InstanceUserArray_Entry]

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceUserArray =
  template this: untyped = result
  this = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](this) else: cast[InstanceUserArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ofsExpr = this.io.readU4le()
  this.ofs = ofsExpr
  let entrySizeExpr = this.io.readU4le()
  this.entrySize = entrySizeExpr
  let qtyEntriesExpr = this.io.readU4le()
  this.qtyEntries = qtyEntriesExpr

proc userEntries(this: InstanceUserArray): seq[InstanceUserArray_Entry] = 
  if this.userEntriesInstFlag:
    return this.userEntriesInst
  if this.ofs > 0:
    let pos = this.io.pos()
    this.io.seek(int(this.ofs))
    for i in 0 ..< int(this.qtyEntries):
      let rawUserEntriesInstExpr = this.io.readBytes(int(this.entrySize))
      this.rawUserEntriesInst = rawUserEntriesInstExpr
      let rawUserEntriesInstIo = newKaitaiStream(rawUserEntriesInstExpr)
      let it = InstanceUserArray_Entry.read(rawUserEntriesInstIo, this.root, this)
      this.userEntriesInst.add(it)
    this.io.seek(pos)
  this.userEntriesInstFlag = true
  return this.userEntriesInst

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): InstanceUserArray =
  InstanceUserArray.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceUserArray): InstanceUserArray_Entry =
  template this: untyped = result
  this = new(InstanceUserArray_Entry)
  let root = if root == nil: cast[InstanceUserArray](this) else: cast[InstanceUserArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  let word1Expr = this.io.readU2le()
  this.word1 = word1Expr
  let word2Expr = this.io.readU2le()
  this.word2 = word2Expr

proc fromFile*(_: typedesc[InstanceUserArray_Entry], filename: string): InstanceUserArray_Entry =
  InstanceUserArray_Entry.read(newKaitaiFileStream(filename), nil, nil)


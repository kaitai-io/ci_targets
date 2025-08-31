import kaitai_struct_nim_runtime
import options

type
  RepeatNTermBytes* = ref object of KaitaiStruct
    `records1`*: seq[seq[byte]]
    `records2`*: seq[seq[byte]]
    `records3`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatNTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNTermBytes


proc read*(_: typedesc[RepeatNTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNTermBytes =
  template this: untyped = result
  this = new(RepeatNTermBytes)
  let root = if root == nil: cast[RepeatNTermBytes](this) else: cast[RepeatNTermBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = this.io.readBytesTerm(170, false, true, true)
    this.records1.add(it)
  for i in 0 ..< int(2):
    let it = this.io.readBytesTerm(170, true, true, true)
    this.records2.add(it)
  for i in 0 ..< int(2):
    let it = this.io.readBytesTerm(85, false, false, true)
    this.records3.add(it)

proc fromFile*(_: typedesc[RepeatNTermBytes], filename: string): RepeatNTermBytes =
  RepeatNTermBytes.read(newKaitaiFileStream(filename), nil, nil)


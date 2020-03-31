import kaitai_struct_nim_runtime
import options

type
  ImportedRoot* = ref object of KaitaiStruct
    one*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[ImportedRoot], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportedRoot =
  template this: untyped = result
  this = new(ImportedRoot)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = this.io.readU1()

proc fromFile*(_: typedesc[ImportedRoot], filename: string): ImportedRoot =
  ImportedRoot.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

import "hello_world"
type
  CastToImported* = ref object of KaitaiStruct
    one*: HelloWorld
    parent*: KaitaiStruct
    oneCastedInst*: Option[HelloWorld]

proc oneCasted*(this: CastToImported): HelloWorld
proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastToImported =
  template this: untyped = result
  this = new(CastToImported)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.one = HelloWorld.read(this.io, this.root, this)

proc oneCasted(this: CastToImported): HelloWorld = 
  if isSome(this.oneCastedInst):
    return get(this.oneCastedInst)
  this.oneCastedInst = some((HelloWorld(this.one)))
  return get(this.oneCastedInst)

proc fromFile*(_: typedesc[CastToImported], filename: string): CastToImported =
  CastToImported.read(newKaitaiFileStream(filename), nil, nil)


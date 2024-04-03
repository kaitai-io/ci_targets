import kaitai_struct_nim_runtime
import options
import hello_world
import cast_to_imported2

import "cast_to_imported2"
import "hello_world"
type
  ImportsCastToImported2* = ref object of KaitaiStruct
    `hw`*: HelloWorld
    `two`*: CastToImported2
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsCastToImported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsCastToImported2


proc read*(_: typedesc[ImportsCastToImported2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsCastToImported2 =
  template this: untyped = result
  this = new(ImportsCastToImported2)
  let root = if root == nil: cast[ImportsCastToImported2](this) else: cast[ImportsCastToImported2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let hwExpr = HelloWorld.read(this.io, nil, nil)
  this.hw = hwExpr
  let twoExpr = CastToImported2.read(this.io, nil, nil, this.hw)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsCastToImported2], filename: string): ImportsCastToImported2 =
  ImportsCastToImported2.read(newKaitaiFileStream(filename), nil, nil)


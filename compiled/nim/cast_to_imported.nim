import kaitai_struct_nim_runtime
import options
import hello_world

import "hello_world"
type
  CastToImported* = ref object of KaitaiStruct
    `one`*: HelloWorld
    `parent`*: KaitaiStruct
    `oneCastedInst`: HelloWorld
    `oneCastedInstFlag`: bool

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastToImported

proc oneCasted*(this: CastToImported): HelloWorld

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CastToImported =
  template this: untyped = result
  this = new(CastToImported)
  let root = if root == nil: cast[CastToImported](this) else: cast[CastToImported](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = HelloWorld.read(this.io, this.root, this)
  this.one = oneExpr

proc oneCasted(this: CastToImported): HelloWorld = 
  if this.oneCastedInstFlag:
    return this.oneCastedInst
  let oneCastedInstExpr = HelloWorld((HelloWorld(this.one)))
  this.oneCastedInst = oneCastedInstExpr
  this.oneCastedInstFlag = true
  return this.oneCastedInst

proc fromFile*(_: typedesc[CastToImported], filename: string): CastToImported =
  CastToImported.read(newKaitaiFileStream(filename), nil, nil)


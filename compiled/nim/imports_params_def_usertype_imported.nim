import kaitai_struct_nim_runtime
import options
import hello_world
import params_def_usertype_imported

type
  ImportsParamsDefUsertypeImported* = ref object of KaitaiStruct
    `hw`*: HelloWorld
    `two`*: ParamsDefUsertypeImported
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsParamsDefUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefUsertypeImported


proc read*(_: typedesc[ImportsParamsDefUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefUsertypeImported =
  template this: untyped = result
  this = new(ImportsParamsDefUsertypeImported)
  let root = if root == nil: cast[ImportsParamsDefUsertypeImported](this) else: cast[ImportsParamsDefUsertypeImported](root)
  this.io = io
  this.root = root
  this.parent = parent

  let hwExpr = HelloWorld.read(this.io, nil, nil)
  this.hw = hwExpr
  let twoExpr = ParamsDefUsertypeImported.read(this.io, nil, nil, this.hw)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsParamsDefUsertypeImported], filename: string): ImportsParamsDefUsertypeImported =
  ImportsParamsDefUsertypeImported.read(newKaitaiFileStream(filename), nil, nil)


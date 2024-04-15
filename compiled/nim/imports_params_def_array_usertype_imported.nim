import kaitai_struct_nim_runtime
import options
import hello_world
import params_def_array_usertype_imported

type
  ImportsParamsDefArrayUsertypeImported* = ref object of KaitaiStruct
    `hws`*: seq[HelloWorld]
    `two`*: ParamsDefArrayUsertypeImported
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsParamsDefArrayUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefArrayUsertypeImported


proc read*(_: typedesc[ImportsParamsDefArrayUsertypeImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsParamsDefArrayUsertypeImported =
  template this: untyped = result
  this = new(ImportsParamsDefArrayUsertypeImported)
  let root = if root == nil: cast[ImportsParamsDefArrayUsertypeImported](this) else: cast[ImportsParamsDefArrayUsertypeImported](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = HelloWorld.read(this.io, nil, nil)
    this.hws.add(it)
  let twoExpr = ParamsDefArrayUsertypeImported.read(this.io, nil, nil, this.hws)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsParamsDefArrayUsertypeImported], filename: string): ImportsParamsDefArrayUsertypeImported =
  ImportsParamsDefArrayUsertypeImported.read(newKaitaiFileStream(filename), nil, nil)


import kaitai_struct_nim_runtime
import options

type
  OpaqueExternalType02Child* = ref object of KaitaiStruct
    `s1`*: string
    `s2`*: string
    `s3`*: OpaqueExternalType02Child_OpaqueExternalType02ChildChild
    `parent`*: KaitaiStruct
    `someMethodInst`: bool
    `someMethodInstFlag`: bool
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild* = ref object of KaitaiStruct
    `s3`*: string
    `parent`*: OpaqueExternalType02Child

proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Child
proc read*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Child): OpaqueExternalType02Child_OpaqueExternalType02ChildChild

proc someMethod*(this: OpaqueExternalType02Child): bool

proc read*(_: typedesc[OpaqueExternalType02Child], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OpaqueExternalType02Child =
  template this: untyped = result
  this = new(OpaqueExternalType02Child)
  let root = if root == nil: cast[OpaqueExternalType02Child](this) else: cast[OpaqueExternalType02Child](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = encode(this.io.readBytesTerm(124, false, true, true), "UTF-8")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytesTerm(124, false, false, true), "UTF-8")
  this.s2 = s2Expr
  let s3Expr = OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(this.io, this.root, this)
  this.s3 = s3Expr

proc someMethod(this: OpaqueExternalType02Child): bool = 
  if this.someMethodInstFlag:
    return this.someMethodInst
  let someMethodInstExpr = bool(true)
  this.someMethodInst = someMethodInstExpr
  this.someMethodInstFlag = true
  return this.someMethodInst

proc fromFile*(_: typedesc[OpaqueExternalType02Child], filename: string): OpaqueExternalType02Child =
  OpaqueExternalType02Child.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], io: KaitaiStream, root: KaitaiStruct, parent: OpaqueExternalType02Child): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  template this: untyped = result
  this = new(OpaqueExternalType02Child_OpaqueExternalType02ChildChild)
  let root = if root == nil: cast[OpaqueExternalType02Child](this) else: cast[OpaqueExternalType02Child](root)
  this.io = io
  this.root = root
  this.parent = parent

  if OpaqueExternalType02Child(this.root).someMethod:
    let s3Expr = encode(this.io.readBytesTerm(64, true, true, true), "UTF-8")
    this.s3 = s3Expr

proc fromFile*(_: typedesc[OpaqueExternalType02Child_OpaqueExternalType02ChildChild], filename: string): OpaqueExternalType02Child_OpaqueExternalType02ChildChild =
  OpaqueExternalType02Child_OpaqueExternalType02ChildChild.read(newKaitaiFileStream(filename), nil, nil)


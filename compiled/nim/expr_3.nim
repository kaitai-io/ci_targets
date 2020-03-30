import kaitai_struct_nim_runtime
import options
import encodings

type
  Expr3* = ref Expr3Obj
  Expr3Obj* = object
    one*: uint8
    two*: string
    io*: KaitaiStream
    root*: Expr3
    parent*: ref RootObj
    threeInst*: Option[string]
    isStrGeInst*: Option[bool]
    isStrNeInst*: Option[bool]
    isStrGtInst*: Option[bool]
    isStrLeInst*: Option[bool]
    isStrLt2Inst*: Option[bool]
    testNotInst*: Option[bool]
    isStrLtInst*: Option[bool]
    fourInst*: Option[string]
    isStrEqInst*: Option[bool]

### Expr3 ###
proc three*(this: Expr3): string
proc isStrGe*(this: Expr3): bool
proc isStrNe*(this: Expr3): bool
proc isStrGt*(this: Expr3): bool
proc isStrLe*(this: Expr3): bool
proc isStrLt2*(this: Expr3): bool
proc testNot*(this: Expr3): bool
proc isStrLt*(this: Expr3): bool
proc four*(this: Expr3): string
proc isStrEq*(this: Expr3): bool
proc three(this: Expr3): string = 
  if isSome(this.threeInst):
    return get(this.threeInst)
  let threeInst = "@" & this.two
  this.threeInst = some(threeInst)
  return get(this.threeInst)

proc isStrGe(this: Expr3): bool = 
  if isSome(this.isStrGeInst):
    return get(this.isStrGeInst)
  let isStrGeInst = this.two >= "ACK2"
  this.isStrGeInst = some(isStrGeInst)
  return get(this.isStrGeInst)

proc isStrNe(this: Expr3): bool = 
  if isSome(this.isStrNeInst):
    return get(this.isStrNeInst)
  let isStrNeInst = this.two != "ACK"
  this.isStrNeInst = some(isStrNeInst)
  return get(this.isStrNeInst)

proc isStrGt(this: Expr3): bool = 
  if isSome(this.isStrGtInst):
    return get(this.isStrGtInst)
  let isStrGtInst = this.two > "ACK2"
  this.isStrGtInst = some(isStrGtInst)
  return get(this.isStrGtInst)

proc isStrLe(this: Expr3): bool = 
  if isSome(this.isStrLeInst):
    return get(this.isStrLeInst)
  let isStrLeInst = this.two <= "ACK2"
  this.isStrLeInst = some(isStrLeInst)
  return get(this.isStrLeInst)

proc isStrLt2(this: Expr3): bool = 
  if isSome(this.isStrLt2Inst):
    return get(this.isStrLt2Inst)
  let isStrLt2Inst = this.three < this.two
  this.isStrLt2Inst = some(isStrLt2Inst)
  return get(this.isStrLt2Inst)

proc testNot(this: Expr3): bool = 
  if isSome(this.testNotInst):
    return get(this.testNotInst)
  let testNotInst = not(false)
  this.testNotInst = some(testNotInst)
  return get(this.testNotInst)

proc isStrLt(this: Expr3): bool = 
  if isSome(this.isStrLtInst):
    return get(this.isStrLtInst)
  let isStrLtInst = this.two < "ACK2"
  this.isStrLtInst = some(isStrLtInst)
  return get(this.isStrLtInst)

proc four(this: Expr3): string = 
  if isSome(this.fourInst):
    return get(this.fourInst)
  let fourInst = "_" & this.two & "_"
  this.fourInst = some(fourInst)
  return get(this.fourInst)

proc isStrEq(this: Expr3): bool = 
  if isSome(this.isStrEqInst):
    return get(this.isStrEqInst)
  let isStrEqInst = this.two == "ACK"
  this.isStrEqInst = some(isStrEqInst)
  return get(this.isStrEqInst)

proc read*(_: typedesc[Expr3], io: KaitaiStream, root: Expr3, parent: ref RootObj): Expr3 =
  let this = new(Expr3)
  let root = if root == nil: cast[Expr3](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  let two = convert(this.io.readBytes(int(3)), srcEncoding = "ASCII")
  this.two = two
  result = this

proc fromFile*(_: typedesc[Expr3], filename: string): Expr3 =
  Expr3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Expr3Obj) =
  close(x.io)


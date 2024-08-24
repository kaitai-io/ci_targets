import kaitai_struct_nim_runtime
import options

type
  ValidFailInEnum* = ref object of KaitaiStruct
    `foo`*: ValidFailInEnum_Animal
    `parent`*: KaitaiStruct
  ValidFailInEnum_Animal* = enum
    dog = 4
    chicken = 12

proc read*(_: typedesc[ValidFailInEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailInEnum


proc read*(_: typedesc[ValidFailInEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailInEnum =
  template this: untyped = result
  this = new(ValidFailInEnum)
  let root = if root == nil: cast[ValidFailInEnum](this) else: cast[ValidFailInEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = ValidFailInEnum_Animal(this.io.readU4le())
  this.foo = fooExpr

proc fromFile*(_: typedesc[ValidFailInEnum], filename: string): ValidFailInEnum =
  ValidFailInEnum.read(newKaitaiFileStream(filename), nil, nil)


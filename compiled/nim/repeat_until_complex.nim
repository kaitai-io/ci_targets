import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatUntilComplex* = ref object of KaitaiStruct
    first*: seq[RepeatUntilComplex_TypeU1]
    second*: seq[RepeatUntilComplex_TypeU2]
    third*: seq[uint8]
    parent*: KaitaiStruct
  RepeatUntilComplex_TypeU1* = ref object of KaitaiStruct
    count*: uint8
    values*: seq[uint8]
    parent*: RepeatUntilComplex
  RepeatUntilComplex_TypeU2* = ref object of KaitaiStruct
    count*: uint16
    values*: seq[uint16]
    parent*: RepeatUntilComplex

proc read*(_: typedesc[RepeatUntilComplex], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilComplex
proc read*(_: typedesc[RepeatUntilComplex_TypeU1], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU1
proc read*(_: typedesc[RepeatUntilComplex_TypeU2], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU2


proc read*(_: typedesc[RepeatUntilComplex], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilComplex =
  template this: untyped = result
  this = new(RepeatUntilComplex)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  block:
    RepeatUntilComplex_TypeU1 _;
    var i: int
    while true:
      let _ = RepeatUntilComplex_TypeU1.read(this.io, this.root, this)
      this.first.add(_)
      if this._.count == 0:
        break
      inc i
    block:
      RepeatUntilComplex_TypeU2 _;
      var i: int
      while true:
        let _ = RepeatUntilComplex_TypeU2.read(this.io, this.root, this)
        this.second.add(_)
        if this._.count == 0:
          break
        inc i
      block:
        uint8 _;
        var i: int
        while true:
          let _ = this.io.readU1()
          this.third.add(_)
          if this._ == 0:
            break
          inc i

      proc fromFile*(_: typedesc[RepeatUntilComplex], filename: string): RepeatUntilComplex =
        RepeatUntilComplex.read(newKaitaiFileStream(filename), nil, nil)

      proc read*(_: typedesc[RepeatUntilComplex_TypeU1], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU1 =
        template this: untyped = result
        this = new(RepeatUntilComplex_TypeU1)
        let root = if root == nil: cast[KaitaiStruct](this) else: root
        this.io = io
        this.root = root
        this.parent = parent

        this.count = this.io.readU1()
        for i in 0 ..< this.count:
          this.values.add(this.io.readU1())

      proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU1], filename: string): RepeatUntilComplex_TypeU1 =
        RepeatUntilComplex_TypeU1.read(newKaitaiFileStream(filename), nil, nil)

      proc read*(_: typedesc[RepeatUntilComplex_TypeU2], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU2 =
        template this: untyped = result
        this = new(RepeatUntilComplex_TypeU2)
        let root = if root == nil: cast[KaitaiStruct](this) else: root
        this.io = io
        this.root = root
        this.parent = parent

        this.count = this.io.readU2le()
        for i in 0 ..< this.count:
          this.values.add(this.io.readU2le())

      proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU2], filename: string): RepeatUntilComplex_TypeU2 =
        RepeatUntilComplex_TypeU2.read(newKaitaiFileStream(filename), nil, nil)


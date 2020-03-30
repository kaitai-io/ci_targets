import kaitai_struct_nim_runtime
import options

type
  RepeatUntilComplex_TypeU1* = ref RepeatUntilComplex_TypeU1Obj
  RepeatUntilComplex_TypeU1Obj* = object
    count*: uint8
    values*: seq[uint8]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: RepeatUntilComplex
  RepeatUntilComplex_TypeU2* = ref RepeatUntilComplex_TypeU2Obj
  RepeatUntilComplex_TypeU2Obj* = object
    count*: uint16
    values*: seq[uint16]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: RepeatUntilComplex
  RepeatUntilComplex* = ref RepeatUntilComplexObj
  RepeatUntilComplexObj* = object
    first*: seq[RepeatUntilComplex_TypeU1]
    second*: seq[RepeatUntilComplex_TypeU2]
    third*: seq[uint8]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: ref RootObj

## RepeatUntilComplex_TypeU1
proc read*(_: typedesc[RepeatUntilComplex_TypeU1], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU1 =
  let this = new(RepeatUntilComplex_TypeU1)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.count = this.io.readU1()
  values = newSeq[uint8](this.count)
  for i in 0 ..< this.count:
    this.values.add(this.io.readU1())
  result = this

proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU1], filename: string): RepeatUntilComplex_TypeU1 =
  RepeatUntilComplex_TypeU1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplex_TypeU1Obj) =
  close(x.io)

## RepeatUntilComplex_TypeU2
proc read*(_: typedesc[RepeatUntilComplex_TypeU2], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU2 =
  let this = new(RepeatUntilComplex_TypeU2)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.count = this.io.readU2le()
  values = newSeq[uint16](this.count)
  for i in 0 ..< this.count:
    this.values.add(this.io.readU2le())
  result = this

proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU2], filename: string): RepeatUntilComplex_TypeU2 =
  RepeatUntilComplex_TypeU2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplex_TypeU2Obj) =
  close(x.io)

## RepeatUntilComplex
proc read*(_: typedesc[RepeatUntilComplex], io: KaitaiStream, root: RepeatUntilComplex, parent: ref RootObj): RepeatUntilComplex =
  let this = new(RepeatUntilComplex)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.first = newSeq[RepeatUntilComplex_TypeU1]()
  block:
    RepeatUntilComplex_TypeU1 _;
    var i: int
    while true:
      let _ = RepeatUntilComplex_TypeU1.read(this.io, this.root, this)
      this.first.add(_)
      if this._.count == 0:
        break
      inc i
    this.second = newSeq[RepeatUntilComplex_TypeU2]()
    block:
      RepeatUntilComplex_TypeU2 _;
      var i: int
      while true:
        let _ = RepeatUntilComplex_TypeU2.read(this.io, this.root, this)
        this.second.add(_)
        if this._.count == 0:
          break
        inc i
      this.third = newSeq[uint8]()
      block:
        uint8 _;
        var i: int
        while true:
          let _ = this.io.readU1()
          this.third.add(_)
          if this._ == 0:
            break
          inc i
        result = this

      proc fromFile*(_: typedesc[RepeatUntilComplex], filename: string): RepeatUntilComplex =
        RepeatUntilComplex.read(newKaitaiFileStream(filename), nil, nil)

      proc `=destroy`(x: var RepeatUntilComplexObj) =
        close(x.io)


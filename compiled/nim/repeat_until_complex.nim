import kaitai_struct_nim_runtime

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

### RepeatUntilComplex_TypeU1 ###
proc read*(_: typedesc[RepeatUntilComplex_TypeU1], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU1 =
  result = new(RepeatUntilComplex_TypeU1)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let count = io.readU1()
  result.count = count
  values = newSeq[uint8](count)
  for i in 0 ..< count:
    values.add(io.readU1())

proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU1], filename: string): RepeatUntilComplex_TypeU1 =
  RepeatUntilComplex_TypeU1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplex_TypeU1Obj) =
  close(x.io)

### RepeatUntilComplex_TypeU2 ###
proc read*(_: typedesc[RepeatUntilComplex_TypeU2], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplex_TypeU2 =
  result = new(RepeatUntilComplex_TypeU2)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let count = io.readU2le()
  result.count = count
  values = newSeq[uint16](count)
  for i in 0 ..< count:
    values.add(io.readU2le())

proc fromFile*(_: typedesc[RepeatUntilComplex_TypeU2], filename: string): RepeatUntilComplex_TypeU2 =
  RepeatUntilComplex_TypeU2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplex_TypeU2Obj) =
  close(x.io)

### RepeatUntilComplex ###
proc read*(_: typedesc[RepeatUntilComplex], io: KaitaiStream, root: RepeatUntilComplex, parent: ref RootObj): RepeatUntilComplex =
  result = new(RepeatUntilComplex)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  first = newSeq[RepeatUntilComplex_TypeU1]()
  block:
    RepeatUntilComplex_TypeU1 _;
    var i: int
    while true:
      let _ = RepeatUntilComplex_TypeU1.read(io, result, root)
      first.add(_)
      if _.count == 0:
        break
      inc i
    second = newSeq[RepeatUntilComplex_TypeU2]()
    block:
      RepeatUntilComplex_TypeU2 _;
      var i: int
      while true:
        let _ = RepeatUntilComplex_TypeU2.read(io, result, root)
        second.add(_)
        if _.count == 0:
          break
        inc i
      third = newSeq[uint8]()
      block:
        uint8 _;
        var i: int
        while true:
          let _ = io.readU1()
          third.add(_)
          if _ == 0:
            break
          inc i

      proc fromFile*(_: typedesc[RepeatUntilComplex], filename: string): RepeatUntilComplex =
        RepeatUntilComplex.read(newKaitaiFileStream(filename), nil, nil)

      proc `=destroy`(x: var RepeatUntilComplexObj) =
        close(x.io)


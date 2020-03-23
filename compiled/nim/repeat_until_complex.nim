import kaitai_struct_nim_runtime

type
  RepeatUntilComplextypeU1* = ref RepeatUntilComplextypeU1Obj
  RepeatUntilComplextypeU1Obj* = object
    first*: seq[TypeU1]
    second*: seq[TypeU2]
    third*: seq[uint8]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: ref RootObj
  RepeatUntilComplextypeU2* = ref RepeatUntilComplextypeU2Obj
  RepeatUntilComplextypeU2Obj* = object
    first*: seq[TypeU1]
    second*: seq[TypeU2]
    third*: seq[uint8]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: ref RootObj
  RepeatUntilComplex* = ref RepeatUntilComplexObj
  RepeatUntilComplexObj* = object
    first*: seq[TypeU1]
    second*: seq[TypeU2]
    third*: seq[uint8]
    io*: KaitaiStream
    root*: RepeatUntilComplex
    parent*: ref RootObj

### RepeatUntilComplextypeU1 ###
proc read*(_: typedesc[RepeatUntilComplextypeU1], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplextypeU1 =
  result = new(RepeatUntilComplextypeU1)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.count = result.io.readU1()
  values = newSeq[uint8](count)
  for i in 0 ..< count:
    result.values.add(result.io.readU1())

proc fromFile*(_: typedesc[RepeatUntilComplextypeU1], filename: string): RepeatUntilComplextypeU1 =
  RepeatUntilComplextypeU1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplextypeU1Obj) =
  close(x.io)

### RepeatUntilComplextypeU2 ###
proc read*(_: typedesc[RepeatUntilComplextypeU2], io: KaitaiStream, root: RepeatUntilComplex, parent: RepeatUntilComplex): RepeatUntilComplextypeU2 =
  result = new(RepeatUntilComplextypeU2)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.count = result.io.readU2le()
  values = newSeq[uint16](count)
  for i in 0 ..< count:
    result.values.add(result.io.readU2le())

proc fromFile*(_: typedesc[RepeatUntilComplextypeU2], filename: string): RepeatUntilComplextypeU2 =
  RepeatUntilComplextypeU2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilComplextypeU2Obj) =
  close(x.io)

### RepeatUntilComplex ###
proc read*(_: typedesc[RepeatUntilComplex], io: KaitaiStream, root: RepeatUntilComplex, parent: ref RootObj): RepeatUntilComplex =
  result = new(RepeatUntilComplex)
  let root = if root == nil: cast[RepeatUntilComplex](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.first = newSeq[TypeU1]()
  block:
    TypeU1 _;
    var i: int
    while true:
      let _ = TypeU1.read(result.io, result, root)
      result.first.add(_)
      if _.count == 0:
        break
      inc i
    result.second = newSeq[TypeU2]()
    block:
      TypeU2 _;
      var i: int
      while true:
        let _ = TypeU2.read(result.io, result, root)
        result.second.add(_)
        if _.count == 0:
          break
        inc i
      result.third = newSeq[uint8]()
      block:
        uint8 _;
        var i: int
        while true:
          let _ = result.io.readU1()
          result.third.add(_)
          if _ == 0:
            break
          inc i

      proc fromFile*(_: typedesc[RepeatUntilComplex], filename: string): RepeatUntilComplex =
        RepeatUntilComplex.read(newKaitaiFileStream(filename), nil, nil)

      proc `=destroy`(x: var RepeatUntilComplexObj) =
        close(x.io)


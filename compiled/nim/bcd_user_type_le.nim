import kaitai_struct_nim_runtime

type
  BcdUserTypeLeltrObj* = ref BcdUserTypeLeltrObjObj
  BcdUserTypeLeltrObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeLertlObj* = ref BcdUserTypeLertlObjObj
  BcdUserTypeLertlObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeLeleadingZeroLtrObj* = ref BcdUserTypeLeleadingZeroLtrObjObj
  BcdUserTypeLeleadingZeroLtrObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeLe* = ref BcdUserTypeLeObj
  BcdUserTypeLeObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeLeltrObj ###
proc read*(_: typedesc[BcdUserTypeLeltrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLeltrObj =
  result = new(BcdUserTypeLeltrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeLeltrObj], filename: string): BcdUserTypeLeltrObj =
  BcdUserTypeLeltrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeltrObjObj) =
  close(x.io)

### BcdUserTypeLertlObj ###
proc read*(_: typedesc[BcdUserTypeLertlObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLertlObj =
  result = new(BcdUserTypeLertlObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeLertlObj], filename: string): BcdUserTypeLertlObj =
  BcdUserTypeLertlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLertlObjObj) =
  close(x.io)

### BcdUserTypeLeleadingZeroLtrObj ###
proc read*(_: typedesc[BcdUserTypeLeleadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLeleadingZeroLtrObj =
  result = new(BcdUserTypeLeleadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeLeleadingZeroLtrObj], filename: string): BcdUserTypeLeleadingZeroLtrObj =
  BcdUserTypeLeleadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeleadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeLe ###
proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): BcdUserTypeLe =
  result = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawLtr = result.io.readBytes(4)
  rawLtrIo = newKaitaiStringStream(rawLtr)
  result.ltr = LtrObj.read(rawLtrIo, result, root)
  result.rawRtl = result.io.readBytes(4)
  rawRtlIo = newKaitaiStringStream(rawRtl)
  result.rtl = RtlObj.read(rawRtlIo, result, root)
  result.rawLeadingZeroLtr = result.io.readBytes(4)
  rawLeadingZeroLtrIo = newKaitaiStringStream(rawLeadingZeroLtr)
  result.leadingZeroLtr = LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, result, root)

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeObj) =
  close(x.io)


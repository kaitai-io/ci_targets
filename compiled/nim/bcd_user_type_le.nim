import kaitai_struct_nim_runtime

type
  BcdUserTypeLe_LtrObj* = ref BcdUserTypeLe_LtrObjObj
  BcdUserTypeLe_LtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
  BcdUserTypeLe_RtlObj* = ref BcdUserTypeLe_RtlObjObj
  BcdUserTypeLe_RtlObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
  BcdUserTypeLe_LeadingZeroLtrObj* = ref BcdUserTypeLe_LeadingZeroLtrObjObj
  BcdUserTypeLe_LeadingZeroLtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: BcdUserTypeLe
  BcdUserTypeLe* = ref BcdUserTypeLeObj
  BcdUserTypeLeObj* = object
    ltr*: BcdUserTypeLe_LtrObj
    rtl*: BcdUserTypeLe_RtlObj
    leadingZeroLtr*: BcdUserTypeLe_LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeLe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeLe_LtrObj ###
proc read*(_: typedesc[BcdUserTypeLe_LtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_LtrObj =
  result = new(BcdUserTypeLe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let b1 = io.readU1()
  result.b1 = b1
  let b2 = io.readU1()
  result.b2 = b2
  let b3 = io.readU1()
  result.b3 = b3
  let b4 = io.readU1()
  result.b4 = b4

proc fromFile*(_: typedesc[BcdUserTypeLe_LtrObj], filename: string): BcdUserTypeLe_LtrObj =
  BcdUserTypeLe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_LtrObjObj) =
  close(x.io)

### BcdUserTypeLe_RtlObj ###
proc read*(_: typedesc[BcdUserTypeLe_RtlObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_RtlObj =
  result = new(BcdUserTypeLe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let b1 = io.readU1()
  result.b1 = b1
  let b2 = io.readU1()
  result.b2 = b2
  let b3 = io.readU1()
  result.b3 = b3
  let b4 = io.readU1()
  result.b4 = b4

proc fromFile*(_: typedesc[BcdUserTypeLe_RtlObj], filename: string): BcdUserTypeLe_RtlObj =
  BcdUserTypeLe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_RtlObjObj) =
  close(x.io)

### BcdUserTypeLe_LeadingZeroLtrObj ###
proc read*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeLe, parent: BcdUserTypeLe): BcdUserTypeLe_LeadingZeroLtrObj =
  result = new(BcdUserTypeLe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let b1 = io.readU1()
  result.b1 = b1
  let b2 = io.readU1()
  result.b2 = b2
  let b3 = io.readU1()
  result.b3 = b3
  let b4 = io.readU1()
  result.b4 = b4

proc fromFile*(_: typedesc[BcdUserTypeLe_LeadingZeroLtrObj], filename: string): BcdUserTypeLe_LeadingZeroLtrObj =
  BcdUserTypeLe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLe_LeadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeLe ###
proc read*(_: typedesc[BcdUserTypeLe], io: KaitaiStream, root: BcdUserTypeLe, parent: ref RootObj): BcdUserTypeLe =
  result = new(BcdUserTypeLe)
  let root = if root == nil: cast[BcdUserTypeLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawLtr = io.readBytes(int(4))
  result.rawLtr = rawLtr
  let rawLtrIo = newKaitaiStringStream(rawLtr)
  let ltr = BcdUserTypeLe_LtrObj.read(rawLtrIo, result, root)
  result.ltr = ltr
  let rawRtl = io.readBytes(int(4))
  result.rawRtl = rawRtl
  let rawRtlIo = newKaitaiStringStream(rawRtl)
  let rtl = BcdUserTypeLe_RtlObj.read(rawRtlIo, result, root)
  result.rtl = rtl
  let rawLeadingZeroLtr = io.readBytes(int(4))
  result.rawLeadingZeroLtr = rawLeadingZeroLtr
  let rawLeadingZeroLtrIo = newKaitaiStringStream(rawLeadingZeroLtr)
  let leadingZeroLtr = BcdUserTypeLe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, result, root)
  result.leadingZeroLtr = leadingZeroLtr

proc fromFile*(_: typedesc[BcdUserTypeLe], filename: string): BcdUserTypeLe =
  BcdUserTypeLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeLeObj) =
  close(x.io)


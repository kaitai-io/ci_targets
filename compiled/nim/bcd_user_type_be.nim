import kaitai_struct_nim_runtime

type
  BcdUserTypeBe_LtrObj* = ref BcdUserTypeBe_LtrObjObj
  BcdUserTypeBe_LtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
  BcdUserTypeBe_RtlObj* = ref BcdUserTypeBe_RtlObjObj
  BcdUserTypeBe_RtlObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
  BcdUserTypeBe_LeadingZeroLtrObj* = ref BcdUserTypeBe_LeadingZeroLtrObjObj
  BcdUserTypeBe_LeadingZeroLtrObjObj* = object
    b1*: uint8
    b2*: uint8
    b3*: uint8
    b4*: uint8
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: BcdUserTypeBe
  BcdUserTypeBe* = ref BcdUserTypeBeObj
  BcdUserTypeBeObj* = object
    ltr*: BcdUserTypeBe_LtrObj
    rtl*: BcdUserTypeBe_RtlObj
    leadingZeroLtr*: BcdUserTypeBe_LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeBe_LtrObj ###
proc read*(_: typedesc[BcdUserTypeBe_LtrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_LtrObj =
  result = new(BcdUserTypeBe_LtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeBe_LtrObj], filename: string): BcdUserTypeBe_LtrObj =
  BcdUserTypeBe_LtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_LtrObjObj) =
  close(x.io)

### BcdUserTypeBe_RtlObj ###
proc read*(_: typedesc[BcdUserTypeBe_RtlObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_RtlObj =
  result = new(BcdUserTypeBe_RtlObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeBe_RtlObj], filename: string): BcdUserTypeBe_RtlObj =
  BcdUserTypeBe_RtlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_RtlObjObj) =
  close(x.io)

### BcdUserTypeBe_LeadingZeroLtrObj ###
proc read*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBe_LeadingZeroLtrObj =
  result = new(BcdUserTypeBe_LeadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeBe_LeadingZeroLtrObj], filename: string): BcdUserTypeBe_LeadingZeroLtrObj =
  BcdUserTypeBe_LeadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBe_LeadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeBe ###
proc read*(_: typedesc[BcdUserTypeBe], io: KaitaiStream, root: BcdUserTypeBe, parent: ref RootObj): BcdUserTypeBe =
  result = new(BcdUserTypeBe)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawLtr = io.readBytes(int(4))
  result.rawLtr = rawLtr
  let rawLtrIo = newKaitaiStringStream(rawLtr)
  let ltr = BcdUserTypeBe_LtrObj.read(rawLtrIo, result, root)
  result.ltr = ltr
  let rawRtl = io.readBytes(int(4))
  result.rawRtl = rawRtl
  let rawRtlIo = newKaitaiStringStream(rawRtl)
  let rtl = BcdUserTypeBe_RtlObj.read(rawRtlIo, result, root)
  result.rtl = rtl
  let rawLeadingZeroLtr = io.readBytes(int(4))
  result.rawLeadingZeroLtr = rawLeadingZeroLtr
  let rawLeadingZeroLtrIo = newKaitaiStringStream(rawLeadingZeroLtr)
  let leadingZeroLtr = BcdUserTypeBe_LeadingZeroLtrObj.read(rawLeadingZeroLtrIo, result, root)
  result.leadingZeroLtr = leadingZeroLtr

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): BcdUserTypeBe =
  BcdUserTypeBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBeObj) =
  close(x.io)


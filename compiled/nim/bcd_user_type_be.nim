import kaitai_struct_nim_runtime

type
  BcdUserTypeBeltrObj* = ref BcdUserTypeBeltrObjObj
  BcdUserTypeBeltrObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeBertlObj* = ref BcdUserTypeBertlObjObj
  BcdUserTypeBertlObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeBeleadingZeroLtrObj* = ref BcdUserTypeBeleadingZeroLtrObjObj
  BcdUserTypeBeleadingZeroLtrObjObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string
  BcdUserTypeBe* = ref BcdUserTypeBeObj
  BcdUserTypeBeObj* = object
    ltr*: LtrObj
    rtl*: RtlObj
    leadingZeroLtr*: LeadingZeroLtrObj
    io*: KaitaiStream
    root*: BcdUserTypeBe
    parent*: ref RootObj
    rawLtr*: string
    rawRtl*: string
    rawLeadingZeroLtr*: string

### BcdUserTypeBeltrObj ###
proc read*(_: typedesc[BcdUserTypeBeltrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBeltrObj =
  result = new(BcdUserTypeBeltrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeBeltrObj], filename: string): BcdUserTypeBeltrObj =
  BcdUserTypeBeltrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBeltrObjObj) =
  close(x.io)

### BcdUserTypeBertlObj ###
proc read*(_: typedesc[BcdUserTypeBertlObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBertlObj =
  result = new(BcdUserTypeBertlObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeBertlObj], filename: string): BcdUserTypeBertlObj =
  BcdUserTypeBertlObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBertlObjObj) =
  close(x.io)

### BcdUserTypeBeleadingZeroLtrObj ###
proc read*(_: typedesc[BcdUserTypeBeleadingZeroLtrObj], io: KaitaiStream, root: BcdUserTypeBe, parent: BcdUserTypeBe): BcdUserTypeBeleadingZeroLtrObj =
  result = new(BcdUserTypeBeleadingZeroLtrObj)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.b1 = result.io.readU1()
  result.b2 = result.io.readU1()
  result.b3 = result.io.readU1()
  result.b4 = result.io.readU1()

proc fromFile*(_: typedesc[BcdUserTypeBeleadingZeroLtrObj], filename: string): BcdUserTypeBeleadingZeroLtrObj =
  BcdUserTypeBeleadingZeroLtrObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBeleadingZeroLtrObjObj) =
  close(x.io)

### BcdUserTypeBe ###
proc read*(_: typedesc[BcdUserTypeBe], io: KaitaiStream, root: BcdUserTypeBe, parent: ref RootObj): BcdUserTypeBe =
  result = new(BcdUserTypeBe)
  let root = if root == nil: cast[BcdUserTypeBe](result) else: root
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

proc fromFile*(_: typedesc[BcdUserTypeBe], filename: string): BcdUserTypeBe =
  BcdUserTypeBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BcdUserTypeBeObj) =
  close(x.io)


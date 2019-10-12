import ../../runtime/nim/kaitai



type
  ImportedAndAbs* = ref ImportedAndAbsObj
  ImportedAndAbsObj* = object
    io: KaitaiStream
    root*: ImportedAndAbs
    parent*: ref RootObj
    one*: uint8
    two*: ImportedRoot

# ImportedAndAbs
proc read*(_: typedesc[ImportedAndAbs], io: KaitaiStream, root: ImportedAndAbs, parent: ref RootObj): owned ImportedAndAbs =
  result = new(ImportedAndAbs)
  let root = if root == nil: cast[ImportedAndAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU1(io)
  result.two = ImportedRoot.read(io)


proc fromFile*(_: typedesc[ImportedAndAbs], filename: string): owned ImportedAndAbs =
  ImportedAndAbs.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndAbsObj) =
  close(x.io)


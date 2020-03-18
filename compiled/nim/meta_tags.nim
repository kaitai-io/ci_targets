import kaitai_struct_nim_runtime



type
  MetaTags* = ref MetaTagsObj
  MetaTagsObj* = object
    io: KaitaiStream
    root*: MetaTags
    parent*: ref RootObj

# MetaTags
proc read*(_: typedesc[MetaTags], io: KaitaiStream, root: MetaTags, parent: ref RootObj): owned MetaTags =
  result = new(MetaTags)
  let root = if root == nil: cast[MetaTags](result) else: root
  result.io = io
  result.root = root
  result.parent = parent



proc fromFile*(_: typedesc[MetaTags], filename: string): owned MetaTags =
  MetaTags.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MetaTagsObj) =
  close(x.io)


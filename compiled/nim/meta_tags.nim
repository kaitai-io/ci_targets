import kaitai_struct_nim_runtime
import options

type
  MetaTags* = ref MetaTagsObj
  MetaTagsObj* = object
    io*: KaitaiStream
    root*: MetaTags
    parent*: ref RootObj

### MetaTags ###
proc read*(_: typedesc[MetaTags], io: KaitaiStream, root: MetaTags, parent: ref RootObj): MetaTags =
  let this = new(MetaTags)
  let root = if root == nil: cast[MetaTags](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[MetaTags], filename: string): MetaTags =
  MetaTags.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MetaTagsObj) =
  close(x.io)


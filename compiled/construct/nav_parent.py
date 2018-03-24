from construct import *
from construct.lib import *

nav_parent__header_obj = Struct(
	'qty_entries' / Int32ul,
	'filename_len' / Int32ul,
)

nav_parent__index_obj = Struct(
	'magic' / Bytes(4),
	'entries' / Array(this._parent.header.qty_entries, LazyBound(lambda: nav_parent__entry)),
)

nav_parent__entry = Struct(
	'filename' / FixedSized(this._parent._parent.header.filename_len, GreedyString(encoding='UTF-8')),
)

nav_parent = Struct(
	'header' / LazyBound(lambda: nav_parent__header_obj),
	'index' / LazyBound(lambda: nav_parent__index_obj),
)

_schema = nav_parent

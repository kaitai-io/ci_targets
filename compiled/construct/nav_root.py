from construct import *
from construct.lib import *

nav_root__header_obj = Struct(
	'qty_entries' / Int32ul,
	'filename_len' / Int32ul,
)

nav_root__index_obj = Struct(
	'magic' / Bytes(4),
	'entries' / Array(this._root.header.qty_entries, nav_root__entry),
)

nav_root__entry = Struct(
	'filename' / FixedSized(this._root.header.filename_len, GreedyString(encoding='UTF-8')),
)

nav_root = Struct(
	'header' / nav_root__header_obj,
	'index' / nav_root__index_obj,
)

_schema = nav_root

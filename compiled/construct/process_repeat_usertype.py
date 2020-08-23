from construct import *
from construct.lib import *

process_repeat_usertype__block = Struct(
	'a' / Int32sl,
	'b' / Int8sb,
)

process_repeat_usertype = Struct(
	'blocks' / Array(2, FixedSized(5, LazyBound(lambda: process_repeat_usertype__block))),
)

_schema = process_repeat_usertype

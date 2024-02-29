from construct import *
from construct.lib import *

integers_min_max__signed = Struct(
	's1' / Int8sb,
	's2le' / Int16sl,
	's4le' / Int32sl,
	's8le' / Int64sl,
	's2be' / Int16sb,
	's4be' / Int32sb,
	's8be' / Int64sb,
)

integers_min_max__unsigned = Struct(
	'u1' / Int8ub,
	'u2le' / Int16ul,
	'u4le' / Int32ul,
	'u8le' / Int64ul,
	'u2be' / Int16ub,
	'u4be' / Int32ub,
	'u8be' / Int64ub,
)

integers_min_max = Struct(
	'unsigned_min' / LazyBound(lambda: integers_min_max__unsigned),
	'unsigned_max' / LazyBound(lambda: integers_min_max__unsigned),
	'signed_min' / LazyBound(lambda: integers_min_max__signed),
	'signed_max' / LazyBound(lambda: integers_min_max__signed),
)

_schema = integers_min_max

from construct import *
from construct.lib import *

fixed_struct__header = Struct(
	'magic1' / FixedSized(6, GreedyBytes),
	'uint8' / Int8ub,
	'sint8' / Int8sb,
	'magic_uint' / FixedSized(10, GreedyBytes),
	'uint16' / Int16ul,
	'uint32' / Int32ul,
	'uint64' / Int64ul,
	'magic_sint' / FixedSized(10, GreedyBytes),
	'sint16' / Int16sl,
	'sint32' / Int32sl,
	'sint64' / Int64sl,
	'magic_uint_le' / FixedSized(9, GreedyBytes),
	'uint16le' / Int16ul,
	'uint32le' / Int32ul,
	'uint64le' / Int64ul,
	'magic_sint_le' / FixedSized(9, GreedyBytes),
	'sint16le' / Int16sl,
	'sint32le' / Int32sl,
	'sint64le' / Int64sl,
	'magic_uint_be' / FixedSized(9, GreedyBytes),
	'uint16be' / Int16ub,
	'uint32be' / Int32ub,
	'uint64be' / Int64ub,
	'magic_sint_be' / FixedSized(9, GreedyBytes),
	'sint16be' / Int16sb,
	'sint32be' / Int32sb,
	'sint64be' / Int64sb,
)

fixed_struct = Struct(
	'hdr' / Pointer(0, LazyBound(lambda: fixed_struct__header)),
)

_schema = fixed_struct

from construct import *
from construct.lib import *

fixed_struct__header = Struct(
	'magic1' / ???,
	'uint8' / Int8ub,
	'sint8' / Int8sb,
	'magic_uint' / ???,
	'uint16' / Int16ul,
	'uint32' / Int32ul,
	'uint64' / Int64ul,
	'magic_sint' / ???,
	'sint16' / Int16sl,
	'sint32' / Int32sl,
	'sint64' / Int64sl,
	'magic_uint_le' / ???,
	'uint16le' / Int16ul,
	'uint32le' / Int32ul,
	'uint64le' / Int64ul,
	'magic_sint_le' / ???,
	'sint16le' / Int16sl,
	'sint32le' / Int32sl,
	'sint64le' / Int64sl,
	'magic_uint_be' / ???,
	'uint16be' / Int16ub,
	'uint32be' / Int32ub,
	'uint64be' / Int64ub,
	'magic_sint_be' / ???,
	'sint16be' / Int16sb,
	'sint32be' / Int32sb,
	'sint64be' / Int64sb,
)

fixed_struct = Struct(
)

_schema = fixed_struct

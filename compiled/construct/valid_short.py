from construct import *
from construct.lib import *

valid_short = Struct(
	'magic1' / FixedSized(6, GreedyBytes),
	'uint8' / Int8ub,
	'sint8' / Int8sb,
	'magic_uint' / FixedSized(10, GreedyString(encoding='UTF-8')),
	'uint16' / Int16ul,
	'uint32' / Int32ul,
	'uint64' / Int64ul,
	'magic_sint' / FixedSized(10, GreedyString(encoding='UTF-8')),
	'sint16' / Int16sl,
	'sint32' / Int32sl,
	'sint64' / Int64sl,
)

_schema = valid_short

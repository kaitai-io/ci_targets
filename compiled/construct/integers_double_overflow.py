from construct import *
from construct.lib import *

integers_double_overflow = Struct(
	'signed_safe_min_be' / Int64sb,
	'signed_safe_min_le' / Int64sl,
	'signed_safe_max_be' / Int64sb,
	'signed_safe_max_le' / Int64sl,
	'signed_unsafe_neg_be' / Int64sb,
	'signed_unsafe_neg_le' / Int64sl,
	'signed_unsafe_pos_be' / Int64sb,
	'signed_unsafe_pos_le' / Int64sl,
	'unsigned_safe_max_be' / Pointer(16, Int64ub),
	'unsigned_safe_max_le' / Pointer(24, Int64ul),
	'unsigned_unsafe_pos_be' / Pointer(48, Int64ub),
	'unsigned_unsafe_pos_le' / Pointer(56, Int64ul),
)

_schema = integers_double_overflow

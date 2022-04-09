from construct import *
from construct.lib import *

str_encodings_utf16__str_be_bom_removed = Struct(
	'bom' / Int16ub,
	'str' / GreedyString(encoding='UTF-16BE'),
)

str_encodings_utf16__str_le_bom_removed = Struct(
	'bom' / Int16ul,
	'str' / GreedyString(encoding='UTF-16LE'),
)

str_encodings_utf16 = Struct(
	'len_be' / Int32ul,
	'be_bom_removed' / FixedSized(this.len_be, LazyBound(lambda: str_encodings_utf16__str_be_bom_removed)),
	'len_le' / Int32ul,
	'le_bom_removed' / FixedSized(this.len_le, LazyBound(lambda: str_encodings_utf16__str_le_bom_removed)),
)

_schema = str_encodings_utf16

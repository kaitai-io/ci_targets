from construct import *
from construct.lib import *
import enum

class debug_enum_name__test_enum1(enum.IntEnum):
	enum_value_80 = 80

class debug_enum_name__test_enum2(enum.IntEnum):
	enum_value_65 = 65

class debug_enum_name__test_subtype__inner_enum1(enum.IntEnum):
	enum_value_67 = 67

class debug_enum_name__test_subtype__inner_enum2(enum.IntEnum):
	enum_value_11 = 11

debug_enum_name__test_subtype = Struct(
	'field1' / Enum(Int8ub, debug_enum_name__test_subtype__inner_enum1),
	'field2' / Int8ub,
	'instance_field' / Computed(lambda this: KaitaiStream.resolve_enum(DebugEnumName.TestSubtype.InnerEnum2, (this.field2 & 15))),
)

debug_enum_name = Struct(
	'one' / Enum(Int8ub, debug_enum_name__test_enum1),
	'array_of_ints' / Array(1, Enum(Int8ub, debug_enum_name__test_enum2)),
	'test_type' / LazyBound(lambda: debug_enum_name__test_subtype),
)

_schema = debug_enum_name

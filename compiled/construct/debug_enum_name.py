from construct import *
from construct.lib import *

def debug_enum_name__test_subtype__inner_enum1(subcon):
	return Enum(subcon,
		enum_value_67=67,
	)

def debug_enum_name__test_subtype__inner_enum2(subcon):
	return Enum(subcon,
		enum_value_11=11,
	)

debug_enum_name__test_subtype = Struct(
	'field1' / debug_enum_name__test_subtype__inner_enum1(Int8ub),
	'field2' / Int8ub,
	'instance_field' / Computed(lambda this: self._root.TestSubtype.InnerEnum2((this.field2 & 15))),
)

def debug_enum_name__test_enum1(subcon):
	return Enum(subcon,
		enum_value_80=80,
	)

def debug_enum_name__test_enum2(subcon):
	return Enum(subcon,
		enum_value_65=65,
	)

debug_enum_name = Struct(
	'one' / debug_enum_name__test_enum1(Int8ub),
	'array_of_ints' / Array(1, debug_enum_name__test_enum2(Int8ub)),
	'test_type' / LazyBound(lambda: debug_enum_name__test_subtype),
)

_schema = debug_enum_name

from construct import *
from construct.lib import *

nested_same_name2__main__foo_obj = Struct(
	'data1' / ???,
)

nested_same_name2__main = Struct(
	'main_size' / Int32sl,
	'foo' / nested_same_name2__main__foo_obj,
)

nested_same_name2__dummy_obj__foo_obj = Struct(
	'data2' / ???,
)

nested_same_name2__dummy_obj = Struct(
	'dummy_size' / Int32sl,
	'foo' / nested_same_name2__dummy_obj__foo_obj,
)

nested_same_name2 = Struct(
	'version' / Int32ul,
	'main_data' / nested_same_name2__main,
	'dummy' / nested_same_name2__dummy_obj,
)

_schema = nested_same_name2

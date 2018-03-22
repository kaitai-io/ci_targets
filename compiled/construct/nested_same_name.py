from construct import *
from construct.lib import *

nested_same_name__main__foo_obj = Struct(
	'data' / ???,
)

nested_same_name__main = Struct(
	'main_size' / Int32sl,
	'foo' / nested_same_name__main__foo_obj,
)

nested_same_name__dummy_obj__foo = Struct(
)

nested_same_name__dummy_obj = Struct(
)

nested_same_name = Struct(
	'main_data' / nested_same_name__main,
	'dummy' / nested_same_name__dummy_obj,
)

_schema = nested_same_name

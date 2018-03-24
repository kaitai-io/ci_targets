from construct import *
from construct.lib import *

nested_same_name__main__foo_obj = Struct(
	'data' / Bytes((this._parent.main_size * 2)),
)

nested_same_name__main = Struct(
	'main_size' / Int32sl,
	'foo' / LazyBound(lambda: nested_same_name__main__foo_obj),
)

nested_same_name__dummy_obj__foo = Struct(
)

nested_same_name__dummy_obj = Struct(
)

nested_same_name = Struct(
	'main_data' / LazyBound(lambda: nested_same_name__main),
	'dummy' / LazyBound(lambda: nested_same_name__dummy_obj),
)

_schema = nested_same_name

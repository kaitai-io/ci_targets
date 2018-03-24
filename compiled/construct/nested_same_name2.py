from construct import *
from construct.lib import *

nested_same_name2__main__foo_obj = Struct(
	'data1' / Bytes((this._parent.main_size * 2)),
)

nested_same_name2__main = Struct(
	'main_size' / Int32sl,
	'foo' / LazyBound(lambda: nested_same_name2__main__foo_obj),
)

nested_same_name2__dummy_obj__foo_obj = Struct(
	'data2' / Bytes((this._parent.dummy_size * 2)),
)

nested_same_name2__dummy_obj = Struct(
	'dummy_size' / Int32sl,
	'foo' / LazyBound(lambda: nested_same_name2__dummy_obj__foo_obj),
)

nested_same_name2 = Struct(
	'version' / Int32ul,
	'main_data' / LazyBound(lambda: nested_same_name2__main),
	'dummy' / LazyBound(lambda: nested_same_name2__dummy_obj),
)

_schema = nested_same_name2

from construct import *
from construct.lib import *

debug_array_user__cat = Struct(
	'meow' / Int8ub,
)

debug_array_user = Struct(
	'one_cat' / LazyBound(lambda: debug_array_user__cat),
	'array_of_cats' / Array(3, LazyBound(lambda: debug_array_user__cat)),
)

_schema = debug_array_user

from construct import *
from construct.lib import *

debug_array_user_eof_exception__cat = Struct(
	'meow' / Int8ub,
	'chirp' / Int8ub,
)

debug_array_user_eof_exception = Struct(
	'one_cat' / LazyBound(lambda: debug_array_user_eof_exception__cat),
	'array_of_cats' / Array(3, LazyBound(lambda: debug_array_user_eof_exception__cat)),
)

_schema = debug_array_user_eof_exception

from construct import *
from construct.lib import *

default_endian_mod__main_obj__subnest = Struct(
	'two' / Int32sl,
)

default_endian_mod__main_obj__subnest_be = Struct(
	'two' / Int32sb,
)

default_endian_mod__main_obj = Struct(
	'one' / Int32sl,
	'nest' / LazyBound(lambda: default_endian_mod__main_obj__subnest),
	'nest_be' / LazyBound(lambda: default_endian_mod__main_obj__subnest_be),
)

default_endian_mod = Struct(
	'main' / LazyBound(lambda: default_endian_mod__main_obj),
)

_schema = default_endian_mod

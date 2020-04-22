from construct import *
from construct.lib import *

default_bit_endian_mod__main_obj__subnest = Struct(
	'two' / ???,
)

default_bit_endian_mod__main_obj__subnest_be = Struct(
	'two' / ???,
)

default_bit_endian_mod__main_obj = Struct(
	'one' / ???,
	'two' / ???,
	'nest' / LazyBound(lambda: default_bit_endian_mod__main_obj__subnest),
	'nest_be' / LazyBound(lambda: default_bit_endian_mod__main_obj__subnest_be),
)

default_bit_endian_mod = Struct(
	'main' / LazyBound(lambda: default_bit_endian_mod__main_obj),
)

_schema = default_bit_endian_mod

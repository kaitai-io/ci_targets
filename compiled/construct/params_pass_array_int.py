from construct import *
from construct.lib import *

params_pass_array_int__wants_ints = Struct(
)

params_pass_array_int = Struct(
	'ints' / Array(3, Int16ul),
	'pass_ints' / LazyBound(lambda: params_pass_array_int__wants_ints),
	'pass_ints_calc' / LazyBound(lambda: params_pass_array_int__wants_ints),
	'ints_calc' / Computed(lambda this: [27643, 7]),
)

_schema = params_pass_array_int

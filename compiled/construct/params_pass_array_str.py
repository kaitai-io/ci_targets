from construct import *
from construct.lib import *

params_pass_array_str__wants_strs = Struct(
)

params_pass_array_str = Struct(
	'str_array' / Array(3, FixedSized(2, GreedyString(encoding='ASCII'))),
	'pass_str_array' / LazyBound(lambda: params_pass_array_str__wants_strs),
	'pass_str_array_calc' / LazyBound(lambda: params_pass_array_str__wants_strs),
	'str_array_calc' / Computed(lambda this: [u"aB", u"Cd"]),
)

_schema = params_pass_array_str

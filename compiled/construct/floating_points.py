from construct import *
from construct.lib import *

floating_points = Struct(
	'single_value' / Float32l,
	'double_value' / Float64l,
	'single_value_be' / Float32b,
	'double_value_be' / Float64b,
	'approximate_value' / Float32l,
	'double_value_plus_float' / Computed(lambda this: this.double_value + 0.05),
	'single_value_plus_float' / Computed(lambda this: this.single_value + 0.5),
	'single_value_plus_int' / Computed(lambda this: this.single_value + 1),
)

_schema = floating_points

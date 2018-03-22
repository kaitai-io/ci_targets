from construct import *
from construct.lib import *

floating_points = Struct(
	'single_value' / ???,
	'double_value' / ???,
	'single_value_be' / ???,
	'double_value_be' / ???,
	'approximate_value' / ???,
)

_schema = floating_points

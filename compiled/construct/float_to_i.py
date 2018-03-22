from construct import *
from construct.lib import *

float_to_i = Struct(
	'single_value' / ???,
	'double_value' / ???,
)

_schema = float_to_i

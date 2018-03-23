from construct import *
from construct.lib import *

js_signed_right_shift = Struct(
	'should_be_40000000' / Computed((2147483648 >> 1)),
	'should_be_a00000' / Computed((2684354560 >> 8)),
)

_schema = js_signed_right_shift

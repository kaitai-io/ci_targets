from construct import *
from construct.lib import *

bits_simple = Struct(
	'byte_1' / ???,
	'byte_2' / ???,
	'bits_a' / ???,
	'bits_b' / ???,
	'bits_c' / ???,
	'large_bits_1' / ???,
	'spacer' / ???,
	'large_bits_2' / ???,
	'normal_s2' / Int16sb,
	'byte_8_9_10' / ???,
	'byte_11_to_14' / ???,
	'byte_15_to_19' / ???,
	'byte_20_to_27' / ???,
	'test_if_b1' / If(this.bits_a == False, Computed(lambda this: 123)),
)

_schema = bits_simple

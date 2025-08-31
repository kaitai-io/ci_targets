from construct import *
from construct.lib import *

float_to_i = Struct(
	'single_value' / Float32l,
	'double_value' / Float64l,
	'single_value_if' / If(True, Float32b),
	'double_value_if' / If(True, Float64b),
	'calc_float1' / Computed(lambda this: 1.234),
	'calc_float2' / Computed(lambda this: 1.5),
	'calc_float3' / Computed(lambda this: 1.9),
	'calc_float4' / Computed(lambda this: -2.7),
	'calc_if' / Computed(lambda this: 13.9),
	'calc_if_i' / Computed(lambda this: int(this.calc_if)),
	'double_i' / Computed(lambda this: int(this.double_value)),
	'double_if_i' / Computed(lambda this: int(this.double_value_if)),
	'float1_i' / Computed(lambda this: int(this.calc_float1)),
	'float2_i' / Computed(lambda this: int(this.calc_float2)),
	'float3_i' / Computed(lambda this: int(this.calc_float3)),
	'float4_i' / Computed(lambda this: int(this.calc_float4)),
	'single_i' / Computed(lambda this: int(this.single_value)),
	'single_if_i' / Computed(lambda this: int(this.single_value_if)),
)

_schema = float_to_i

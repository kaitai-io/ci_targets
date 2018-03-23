from construct import *
from construct.lib import *

float_to_i = Struct(
	'single_value' / Float32l,
	'double_value' / Float64l,
	'float2_i' / Computed(int(this.calc_float2)),
	'calc_float1' / Computed(1.234),
	'float4_i' / Computed(int(this.calc_float4)),
	'calc_float3' / Computed(1.9),
	'calc_float2' / Computed(1.5),
	'float1_i' / Computed(int(this.calc_float1)),
	'double_i' / Computed(int(this.double_value)),
	'float3_i' / Computed(int(this.calc_float3)),
	'single_i' / Computed(int(this.single_value)),
	'calc_float4' / Computed(-2.7),
)

_schema = float_to_i

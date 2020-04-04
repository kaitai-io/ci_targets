from construct import *
from construct.lib import *

params_pass_array_usertype__block = Struct(
	'foo' / Int8ub,
)

params_pass_array_usertype__param_type = Struct(
	'one' / FixedSized(this.bar[0].foo, GreedyBytes),
	'two' / FixedSized(this.bar[1].foo, GreedyBytes),
)

params_pass_array_usertype = Struct(
	'blocks' / Array(2, LazyBound(lambda: params_pass_array_usertype__block)),
	'pass_blocks' / LazyBound(lambda: params_pass_array_usertype__param_type),
)

_schema = params_pass_array_usertype

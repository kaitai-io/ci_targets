from construct import *
from construct.lib import *

params_pass_bool__param_type_b1 = Struct(
	'foo' / FixedSized((1 if this.arg else 2), GreedyBytes),
)

params_pass_bool__param_type_bool = Struct(
	'foo' / FixedSized((1 if this.arg else 2), GreedyBytes),
)

params_pass_bool = Struct(
	's_false' / ???,
	's_true' / ???,
	'seq_b1' / LazyBound(lambda: params_pass_bool__param_type_b1),
	'seq_bool' / LazyBound(lambda: params_pass_bool__param_type_bool),
	'literal_b1' / LazyBound(lambda: params_pass_bool__param_type_b1),
	'literal_bool' / LazyBound(lambda: params_pass_bool__param_type_bool),
	'inst_b1' / LazyBound(lambda: params_pass_bool__param_type_b1),
	'inst_bool' / LazyBound(lambda: params_pass_bool__param_type_bool),
	'v_false' / Computed(lambda this: False),
	'v_true' / Computed(lambda this: True),
)

_schema = params_pass_bool

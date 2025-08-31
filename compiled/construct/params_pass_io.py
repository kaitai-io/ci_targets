from construct import *
from construct.lib import *

params_pass_io__block = Struct(
	'foo' / Int8ub,
)

params_pass_io__param_type = Struct(
	'buf' / FixedSized(stream_size(this.arg_stream), GreedyBytes),
)

params_pass_io = Struct(
	'first' / FixedSized(1, LazyBound(lambda: params_pass_io__block)),
	'one' / LazyBound(lambda: params_pass_io__param_type),
)

_schema = params_pass_io

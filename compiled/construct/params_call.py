from construct import *
from construct.lib import *

params_call__my_str1 = Struct(
	'body' / FixedSized(this.len, GreedyString(encoding='UTF-8')),
)

params_call__my_str2 = Struct(
	'body' / FixedSized(this.len, GreedyString(encoding='UTF-8')),
	'trailer' / If(this.has_trailer, Int8ub),
)

params_call = Struct(
	'buf1' / LazyBound(lambda: params_call__my_str1),
	'buf2' / LazyBound(lambda: params_call__my_str2),
)

_schema = params_call

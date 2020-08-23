from construct import *
from construct.lib import *

params_call_extra_parens__my_str1 = Struct(
	'body' / FixedSized(this.len, GreedyString(encoding='UTF-8')),
)

params_call_extra_parens = Struct(
	'buf1' / LazyBound(lambda: params_call_extra_parens__my_str1),
)

_schema = params_call_extra_parens

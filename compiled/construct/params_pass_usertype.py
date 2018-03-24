from construct import *
from construct.lib import *

params_pass_usertype__block = Struct(
	'foo' / Int8ub,
)

params_pass_usertype__param_type = Struct(
	'buf' / Bytes(this.foo.foo),
)

params_pass_usertype = Struct(
	'first' / LazyBound(lambda: params_pass_usertype__block),
	'one' / LazyBound(lambda: params_pass_usertype__param_type),
)

_schema = params_pass_usertype

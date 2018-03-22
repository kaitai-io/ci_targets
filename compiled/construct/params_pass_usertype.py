from construct import *
from construct.lib import *

params_pass_usertype__block = Struct(
	'foo' / Int8ub,
)

params_pass_usertype__param_type = Struct(
	'buf' / ???,
)

params_pass_usertype = Struct(
	'first' / params_pass_usertype__block,
	'one' / params_pass_usertype__param_type,
)

_schema = params_pass_usertype

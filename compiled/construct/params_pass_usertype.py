from construct import *
from construct.lib import *

params_pass_usertype = Struct(
	'first' / ???,
	'one' / ???,
)

_schema = params_pass_usertype

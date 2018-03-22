from construct import *
from construct.lib import *

params_call_short = Struct(
	'buf1' / ???,
	'buf2' / ???,
)

_schema = params_call_short

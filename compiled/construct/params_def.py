from construct import *
from construct.lib import *

params_def = Struct(
	'buf' / ???,
	'trailer' / Int8ub,
)

_schema = params_def

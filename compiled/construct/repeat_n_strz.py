from construct import *
from construct.lib import *

repeat_n_strz = Struct(
	'qty' / Int32ul,
	'lines' / ???,
)

_schema = repeat_n_strz

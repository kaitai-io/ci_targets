from construct import *
from construct.lib import *

repeat_n_strz_double = Struct(
	'qty' / Int32ul,
	'lines1' / ???,
	'lines2' / ???,
)

_schema = repeat_n_strz_double

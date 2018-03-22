from construct import *
from construct.lib import *

str_eos = Struct(
	'str' / ???,
)

_schema = str_eos

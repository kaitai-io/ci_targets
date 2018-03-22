from construct import *
from construct.lib import *

repeat_eos_u4 = Struct(
	'numbers' / Int32ul,
)

_schema = repeat_eos_u4

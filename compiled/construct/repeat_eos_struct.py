from construct import *
from construct.lib import *

repeat_eos_struct = Struct(
	'chunks' / ???,
)

_schema = repeat_eos_struct

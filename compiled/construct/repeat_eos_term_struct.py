from construct import *
from construct.lib import *

repeat_eos_term_struct__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

repeat_eos_term_struct = Struct(
	'records' / GreedyRange(???),
)

_schema = repeat_eos_term_struct

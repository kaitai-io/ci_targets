from construct import *
from construct.lib import *

repeat_n_term_struct__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

repeat_n_term_struct = Struct(
	'records1' / Array(2, ???),
	'records2' / Array(2, ???),
	'records3' / Array(2, ???),
)

_schema = repeat_n_term_struct

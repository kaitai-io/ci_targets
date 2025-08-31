from construct import *
from construct.lib import *

process_term_struct__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

process_term_struct = Struct(
	's1' / ???,
	's2' / ???,
	's3' / ???,
)

_schema = process_term_struct

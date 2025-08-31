from construct import *
from construct.lib import *

term_struct__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

term_struct = Struct(
	's1' / ???,
	's2' / ???,
	's3' / ???,
)

_schema = term_struct

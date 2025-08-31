from construct import *
from construct.lib import *

term_struct3__bytes_wrapper = Struct(
	'value' / GreedyBytes,
)

term_struct3 = Struct(
	's1' / ???,
	's2' / ???,
	's3' / ???,
)

_schema = term_struct3

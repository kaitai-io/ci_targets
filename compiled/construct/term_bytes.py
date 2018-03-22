from construct import *
from construct.lib import *

term_bytes = Struct(
	's1' / ???,
	's2' / ???,
	's3' / ???,
)

_schema = term_bytes

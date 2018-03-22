from construct import *
from construct.lib import *

process_coerce_bytes = Struct(
	'records' / ???,
)

_schema = process_coerce_bytes

from construct import *
from construct.lib import *

index_sizes = Struct(
	'qty' / Int32ul,
	'sizes' / Int32ul,
	'bufs' / ???,
)

_schema = index_sizes

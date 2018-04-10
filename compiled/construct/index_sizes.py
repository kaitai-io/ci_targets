from construct import *
from construct.lib import *

index_sizes = Struct(
	'qty' / Int32ul,
	'sizes' / Array(this.qty, Int32ul),
	'bufs' / Array(this.qty, FixedSized(this.sizes[i], GreedyString(encoding='ASCII'))),
)

_schema = index_sizes

from construct import *
from construct.lib import *

index_sizes = Struct(
	'qty' / Int32ul,
	'sizes' / Array(self.qty, Int32ul),
	'bufs' / Array(self.qty, FixedSized(self.sizes[i], GreedyString(encoding='ASCII'))),
)

_schema = index_sizes

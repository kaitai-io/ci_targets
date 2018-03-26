from construct import *
from construct.lib import *

index_to_param_until__block = Struct(
	'buf' / FixedSized(_root.sizes[this.idx], GreedyString(encoding='ASCII')),
)

index_to_param_until = Struct(
	'qty' / Int32ul,
	'sizes' / Array(this.qty, Int32ul),
	'blocks' / ???,
)

_schema = index_to_param_until

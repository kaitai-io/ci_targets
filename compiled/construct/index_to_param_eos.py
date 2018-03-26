from construct import *
from construct.lib import *

index_to_param_eos__block = Struct(
	'buf' / FixedSized(_root.sizes[this.idx], GreedyString(encoding='ASCII')),
)

index_to_param_eos = Struct(
	'qty' / Int32ul,
	'sizes' / Array(this.qty, Int32ul),
	'blocks' / GreedyRange(LazyBound(lambda: index_to_param_eos__block)),
)

_schema = index_to_param_eos

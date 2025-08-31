from construct import *
from construct.lib import *

expr_if_int_ops = Struct(
	'key' / If(True, Int64ul),
	'skip' / FixedSized(8, GreedyBytes),
	'bytes' / FixedSized(8, GreedyBytes),
	'items' / Array(4, Int8sb),
	'bytes_sub_key' / Computed(lambda this: KaitaiStream.byte_array_index(this.bytes, this.key)),
	'items_sub_key' / Computed(lambda this: this.items[this.key]),
)

_schema = expr_if_int_ops

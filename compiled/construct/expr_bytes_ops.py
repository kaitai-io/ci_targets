from construct import *
from construct.lib import *

expr_bytes_ops = Struct(
	'one' / FixedSized(3, GreedyBytes),
	'two_last' / Computed(lambda this: KaitaiStream.byte_array_index(this.two, -1)),
	'two_max' / Computed(lambda this: KaitaiStream.byte_array_max(this.two)),
	'one_min' / Computed(lambda this: KaitaiStream.byte_array_min(this.one)),
	'one_first' / Computed(lambda this: KaitaiStream.byte_array_index(this.one, 0)),
	'one_mid' / Computed(lambda this: KaitaiStream.byte_array_index(this.one, 1)),
	'two' / Computed(lambda this: b"\x41\xFF\x4B"),
	'two_min' / Computed(lambda this: KaitaiStream.byte_array_min(this.two)),
	'two_mid' / Computed(lambda this: KaitaiStream.byte_array_index(this.two, 1)),
	'one_size' / Computed(lambda this: len(this.one)),
	'one_last' / Computed(lambda this: KaitaiStream.byte_array_index(this.one, -1)),
	'two_size' / Computed(lambda this: len(this.two)),
	'one_max' / Computed(lambda this: KaitaiStream.byte_array_max(this.one)),
	'two_first' / Computed(lambda this: KaitaiStream.byte_array_index(this.two, 0)),
)

_schema = expr_bytes_ops

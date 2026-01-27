from construct import *
from construct.lib import *

expr_bytes_ops = Struct(
	'one' / FixedSized(3, GreedyBytes),
	'one_first' / Computed(lambda this: this.one[0]),
	'one_last' / Computed(lambda this: this.one[-1]),
	'one_max' / Computed(lambda this: max(this.one)),
	'one_mid' / Computed(lambda this: this.one[1]),
	'one_min' / Computed(lambda this: min(this.one)),
	'one_size' / Computed(lambda this: len(this.one)),
	'two' / Computed(lambda this: b"\x41\xFF\x4B"),
	'two_first' / Computed(lambda this: this.two[0]),
	'two_last' / Computed(lambda this: this.two[-1]),
	'two_max' / Computed(lambda this: max(this.two)),
	'two_mid' / Computed(lambda this: this.two[1]),
	'two_min' / Computed(lambda this: min(this.two)),
	'two_size' / Computed(lambda this: len(this.two)),
)

_schema = expr_bytes_ops

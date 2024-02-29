from construct import *
from construct.lib import *

expr_bytes_cmp = Struct(
	'one' / FixedSized(1, GreedyBytes),
	'two' / FixedSized(3, GreedyBytes),
	'is_eq' / Computed(lambda this: this.two == this.ack),
	'is_ne' / Computed(lambda this: this.two != this.ack),
	'is_gt2' / Computed(lambda this: this.hi_val > this.two),
	'is_le' / Computed(lambda this: this.two <= this.ack2),
	'ack' / Computed(lambda this: b"\x41\x43\x4B"),
	'hi_val' / Computed(lambda this: b"\x90\x43"),
	'is_gt' / Computed(lambda this: this.two > this.ack2),
	'ack2' / Computed(lambda this: b"\x41\x43\x4B\x32"),
	'is_lt2' / Computed(lambda this: this.one < this.two),
	'is_lt' / Computed(lambda this: this.two < this.ack2),
	'is_ge' / Computed(lambda this: this.two >= this.ack2),
)

_schema = expr_bytes_cmp

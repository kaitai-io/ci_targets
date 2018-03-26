from construct import *
from construct.lib import *

expr_bytes_cmp = Struct(
	'one' / FixedSized(1, GreedyBytes),
	'two' / FixedSized(3, GreedyBytes),
	'is_le' / Computed(this.two <= this.ack2),
	'ack' / Computed(b"\x41\x43\x4B"),
	'is_gt2' / Computed(this.hi_val > this.two),
	'is_gt' / Computed(this.two > this.ack2),
	'ack2' / Computed(b"\x41\x43\x4B\x32"),
	'is_eq' / Computed(this.two == this.ack),
	'is_lt2' / Computed(this.one < this.two),
	'is_ge' / Computed(this.two >= this.ack2),
	'hi_val' / Computed(b"\x90\x43"),
	'is_ne' / Computed(this.two != this.ack),
	'is_lt' / Computed(this.two < this.ack2),
)

_schema = expr_bytes_cmp

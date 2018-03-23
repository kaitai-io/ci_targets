from construct import *
from construct.lib import *

expr_bytes_cmp = Struct(
	'one' / Bytes(1),
	'two' / Bytes(3),
	'is_le' / Computed(self.two <= self.ack2),
	'ack' / Computed(b"\x41\x43\x4B"),
	'is_gt2' / Computed(self.hi_val > self.two),
	'is_gt' / Computed(self.two > self.ack2),
	'ack2' / Computed(b"\x41\x43\x4B\x32"),
	'is_eq' / Computed(self.two == self.ack),
	'is_lt2' / Computed(self.one < self.two),
	'is_ge' / Computed(self.two >= self.ack2),
	'hi_val' / Computed(b"\x90\x43"),
	'is_ne' / Computed(self.two != self.ack),
	'is_lt' / Computed(self.two < self.ack2),
)

_schema = expr_bytes_cmp

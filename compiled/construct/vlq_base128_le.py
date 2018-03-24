from construct import *
from construct.lib import *

vlq_base128_le__group = Struct(
	'b' / Int8ub,
	'has_next' / Computed((this.b & 128) != 0),
	'value' / Computed((this.b & 127)),
)

vlq_base128_le = Struct(
	'groups' / ???,
	'len' / Computed(len(this.groups)),
	'value' / Computed((((((((this.groups[0].value + ((this.groups[1].value << 7) if this.len >= 2 else 0)) + ((this.groups[2].value << 14) if this.len >= 3 else 0)) + ((this.groups[3].value << 21) if this.len >= 4 else 0)) + ((this.groups[4].value << 28) if this.len >= 5 else 0)) + ((this.groups[5].value << 35) if this.len >= 6 else 0)) + ((this.groups[6].value << 42) if this.len >= 7 else 0)) + ((this.groups[7].value << 49) if this.len >= 8 else 0))),
)

_schema = vlq_base128_le

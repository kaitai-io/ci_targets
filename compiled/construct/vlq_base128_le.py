from construct import *
from construct.lib import *

vlq_base128_le__group = Struct(
	'has_next' / ???,
	'value' / ???,
)

vlq_base128_le = Struct(
	'groups' / RepeatUntil(lambda obj_, list_, this: (not (obj_.has_next)), LazyBound(lambda: vlq_base128_le__group)),
	'len' / Computed(lambda this: len(this.groups)),
	'sign_bit' / Computed(lambda this: (1 << 7 * this.len - 1)),
	'value' / Computed(lambda this: (((((((this.groups[0].value + (this.groups[1].value << 7 if this.len >= 2 else 0)) + (this.groups[2].value << 14 if this.len >= 3 else 0)) + (this.groups[3].value << 21 if this.len >= 4 else 0)) + (this.groups[4].value << 28 if this.len >= 5 else 0)) + (this.groups[5].value << 35 if this.len >= 6 else 0)) + (this.groups[6].value << 42 if this.len >= 7 else 0)) + (this.groups[7].value << 49 if this.len >= 8 else 0))),
	'value_signed' / Computed(lambda this: ((this.value ^ this.sign_bit) - this.sign_bit)),
)

_schema = vlq_base128_le

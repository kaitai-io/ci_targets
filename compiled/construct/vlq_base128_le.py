from construct import *
from construct.lib import *

vlq_base128_le__group = Struct(
	'has_next' / ???,
	'value' / ???,
	'interm_value' / Computed(lambda this: (this.prev_interm_value + this.value * this.multiplier)),
)

vlq_base128_le = Struct(
	'groups' / RepeatUntil(lambda obj_, list_, this: (not (obj_.has_next)), LazyBound(lambda: vlq_base128_le__group)),
	'len' / Computed(lambda this: len(this.groups)),
	'sign_bit' / Computed(lambda this: (9223372036854775808 if this.len == 10 else this.groups[-1].multiplier * 64)),
	'value' / Computed(lambda this: this.groups[-1].interm_value),
	'value_signed' / Computed(lambda this: (-((this.sign_bit - (this.value - this.sign_bit))) if  ((this.sign_bit > 0) and (this.value >= this.sign_bit))  else this.value)),
)

_schema = vlq_base128_le

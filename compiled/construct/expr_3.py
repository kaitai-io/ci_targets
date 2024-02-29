from construct import *
from construct.lib import *

expr_3 = Struct(
	'one' / Int8ub,
	'two' / FixedSized(3, GreedyString(encoding='ASCII')),
	'is_str_le' / Computed(lambda this: this.two <= u"ACK2"),
	'is_str_ge' / Computed(lambda this: this.two >= u"ACK2"),
	'three' / Computed(lambda this: u"@" + this.two),
	'is_str_gt' / Computed(lambda this: this.two > u"ACK2"),
	'is_str_eq' / Computed(lambda this: this.two == u"ACK"),
	'is_str_lt2' / Computed(lambda this: this.three < this.two),
	'is_str_lt' / Computed(lambda this: this.two < u"ACK2"),
	'four' / Computed(lambda this: u"_" + this.two + u"_"),
	'is_str_ne' / Computed(lambda this: this.two != u"ACK"),
	'test_not' / Computed(lambda this: not (False)),
)

_schema = expr_3

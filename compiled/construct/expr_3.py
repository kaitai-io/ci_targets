from construct import *
from construct.lib import *

expr_3 = Struct(
	'one' / Int8ub,
	'two' / FixedSized(3, GreedyString(encoding='ASCII')),
	'three' / Computed(u"@" + this.two),
	'is_str_ge' / Computed(this.two >= u"ACK2"),
	'is_str_ne' / Computed(this.two != u"ACK"),
	'is_str_gt' / Computed(this.two > u"ACK2"),
	'is_str_le' / Computed(this.two <= u"ACK2"),
	'is_str_lt2' / Computed(this.three < this.two),
	'test_not' / Computed(not (False)),
	'is_str_lt' / Computed(this.two < u"ACK2"),
	'four' / Computed(u"_" + this.two + u"_"),
	'is_str_eq' / Computed(this.two == u"ACK"),
)

_schema = expr_3

from construct import *
from construct.lib import *

expr_3 = Struct(
	'one' / Int8ub,
	'two' / FixedSized(3, GreedyString(encoding='ASCII')),
	'three' / Computed(u"@" + self.two),
	'is_str_ge' / Computed(self.two >= u"ACK2"),
	'is_str_ne' / Computed(self.two != u"ACK"),
	'is_str_gt' / Computed(self.two > u"ACK2"),
	'is_str_le' / Computed(self.two <= u"ACK2"),
	'is_str_lt2' / Computed(self.three < self.two),
	'test_not' / Computed(not (False)),
	'is_str_lt' / Computed(self.two < u"ACK2"),
	'four' / Computed(u"_" + self.two + u"_"),
	'is_str_eq' / Computed(self.two == u"ACK"),
)

_schema = expr_3

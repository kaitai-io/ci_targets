from construct import *
from construct.lib import *

expr_str_ops = Struct(
	'one' / FixedSized(5, GreedyString(encoding='ASCII')),
	'one_substr_3_to_3' / Computed(lambda this: this.one[3:3]),
	'to_i_r8' / Computed(lambda this: int(u"721", 8)),
	'to_i_r16' / Computed(lambda this: int(u"47cf", 16)),
	'two_substr_0_to_10' / Computed(lambda this: this.two[0:10]),
	'one_len' / Computed(lambda this: len(this.one)),
	'two_len' / Computed(lambda this: len(this.two)),
	'one_substr_2_to_5' / Computed(lambda this: this.one[2:5]),
	'to_i_r2' / Computed(lambda this: int(u"1010110", 2)),
	'two_rev' / Computed(lambda this: this.two[::-1]),
	'two' / Computed(lambda this: u"0123456789"),
	'two_substr_4_to_10' / Computed(lambda this: this.two[4:10]),
	'to_i_r10' / Computed(lambda this: int(u"-072")),
	'two_substr_0_to_7' / Computed(lambda this: this.two[0:7]),
	'to_i_attr' / Computed(lambda this: int(u"9173")),
	'one_substr_0_to_3' / Computed(lambda this: this.one[0:3]),
	'one_rev' / Computed(lambda this: this.one[::-1]),
)

_schema = expr_str_ops

from construct import *
from construct.lib import *

expr_fstring_0 = Struct(
	'seq_str' / FixedSized(5, GreedyString(encoding='ASCII')),
	'seq_int' / Int8ub,
	'empty' / Computed(lambda this: u""),
	'head_and_int' / Computed(lambda this: u"abc=" + str(this.seq_int)),
	'head_and_int_literal' / Computed(lambda this: u"abc=" + str(123)),
	'head_and_str' / Computed(lambda this: u"abc=" + this.seq_str),
	'head_and_str_literal' / Computed(lambda this: u"abc=" + u"foo"),
	'literal' / Computed(lambda this: u"abc"),
	'literal_with_escapes' / Computed(lambda this: u"abc\n\tt"),
)

_schema = expr_fstring_0

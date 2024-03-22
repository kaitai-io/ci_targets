from construct import *
from construct.lib import *

expr_0 = Struct(
	'len_of_1' / Int16ul,
	'must_be_abc123' / Computed(lambda this: u"abc" + u"123"),
	'must_be_f7' / Computed(lambda this: 7 + 240),
)

_schema = expr_0

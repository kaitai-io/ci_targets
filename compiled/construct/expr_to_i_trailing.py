from construct import *
from construct.lib import *

expr_to_i_trailing = Struct(
	'to_i_r10' / Computed(lambda this: int(u"9173abc")),
	'to_i_r13' / Computed(lambda this: int(u"9173abc", 13)),
	'to_i_garbage' / Computed(lambda this: int(u"123_.^")),
)

_schema = expr_to_i_trailing

from construct import *
from construct.lib import *

expr_2__mod_str = Struct(
	'len_orig' / Int16ul,
	'str' / FixedSized(self.len_mod, GreedyString(encoding='UTF-8')),
	'rest' / FixedSized(3, expr_2__tuple),
)

expr_2__tuple = Struct(
	'byte0' / Int8ub,
	'byte1' / Int8ub,
	'byte2' / Int8ub,
)

expr_2 = Struct(
	'str1' / expr_2__mod_str,
	'str2' / expr_2__mod_str,
)

_schema = expr_2

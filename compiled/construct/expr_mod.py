from construct import *
from construct.lib import *

expr_mod = Struct(
	'int_u' / Int32ul,
	'int_s' / Int32sl,
	'mod_pos_const' / Computed((9837 % 13)),
	'mod_neg_const' / Computed((-9837 % 13)),
	'mod_pos_seq' / Computed((self.int_u % 13)),
	'mod_neg_seq' / Computed((self.int_s % 13)),
)

_schema = expr_mod

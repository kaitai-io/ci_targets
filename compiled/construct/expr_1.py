from construct import *
from construct.lib import *

expr_1 = Struct(
	'len_of_1' / Int16ul,
	'str1' / FixedSized(self.len_of_1_mod, GreedyString(encoding='ASCII')),
	'len_of_1_mod' / Computed((self.len_of_1 - 2)),
	'str1_len' / Computed(len(self.str1)),
)

_schema = expr_1

from construct import *
from construct.lib import *

expr_ops_parens = Struct(
	'bool_and' / Computed(lambda this: int( ((False) and (True)) )),
	'str_0_to_4' / Computed(lambda this: u"01234"),
	'bool_or' / Computed(lambda this: int( ((not (False)) or (False)) )),
	'f_e' / Computed(lambda this: 2.72),
	'f_sum_to_int' / Computed(lambda this: int((this.f_2pi + this.f_e))),
	'f_2pi' / Computed(lambda this: 6.28),
	'str_concat_rev' / Computed(lambda this: (this.str_0_to_4 + this.str_5_to_9)[::-1]),
	'i_m13' / Computed(lambda this: -13),
	'str_concat_len' / Computed(lambda this: len(this.str_0_to_4 + this.str_5_to_9)),
	'str_concat_to_i' / Computed(lambda this: int(this.str_0_to_4 + this.str_5_to_9)),
	'i_42' / Computed(lambda this: 42),
	'i_sum_to_str' / Computed(lambda this: str((this.i_42 + this.i_m13))),
	'bool_eq' / Computed(lambda this: int(False == True)),
	'str_5_to_9' / Computed(lambda this: u"56789"),
	'str_concat_substr_2_to_7' / Computed(lambda this: (this.str_0_to_4 + this.str_5_to_9)[2:7]),
)

_schema = expr_ops_parens

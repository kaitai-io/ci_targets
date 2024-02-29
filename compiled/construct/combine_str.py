from construct import *
from construct.lib import *

combine_str = Struct(
	'str_term' / NullTerminated(GreedyString(encoding='ASCII'), term=b'\x7C', include=False, consume=True),
	'str_limit' / FixedSized(4, GreedyString(encoding='ASCII')),
	'str_eos' / GreedyString(encoding='ASCII'),
	'term_or_eos' / Computed(lambda this: (this.str_term if False else this.str_eos)),
	'eos_or_calc_bytes' / Computed(lambda this: (this.str_eos if True else this.str_calc_bytes)),
	'limit_or_calc' / Computed(lambda this: (this.str_limit if False else this.str_calc)),
	'str_calc_bytes' / Computed(lambda this: (this.calc_bytes).decode("ASCII")),
	'limit_or_calc_bytes' / Computed(lambda this: (this.str_limit if True else this.str_calc_bytes)),
	'eos_or_calc' / Computed(lambda this: (this.str_eos if False else this.str_calc)),
	'limit_or_eos' / Computed(lambda this: (this.str_limit if True else this.str_eos)),
	'str_calc' / Computed(lambda this: u"bar"),
	'calc_bytes' / Computed(lambda this: b"\x62\x61\x7A"),
	'term_or_calc_bytes' / Computed(lambda this: (this.str_term if False else this.str_calc_bytes)),
	'term_or_limit' / Computed(lambda this: (this.str_term if True else this.str_limit)),
	'term_or_calc' / Computed(lambda this: (this.str_term if True else this.str_calc)),
	'calc_or_calc_bytes' / Computed(lambda this: (this.str_calc if False else this.str_calc_bytes)),
)

_schema = combine_str

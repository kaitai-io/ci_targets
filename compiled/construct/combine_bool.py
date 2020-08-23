from construct import *
from construct.lib import *

combine_bool = Struct(
	'bool_bit' / ???,
	'bool_calc' / Computed(lambda this: False),
	'bool_calc_bit' / Computed(lambda this: (this.bool_calc if True else this.bool_bit)),
)

_schema = combine_bool

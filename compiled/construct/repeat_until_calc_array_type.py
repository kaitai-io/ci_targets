from construct import *
from construct.lib import *

repeat_until_calc_array_type__record = Struct(
	'marker' / Int8ub,
	'body' / Int32ul,
)

repeat_until_calc_array_type = Struct(
	'records' / RepeatUntil(lambda obj_, list_, this: obj_.marker == 170, FixedSized(5, LazyBound(lambda: repeat_until_calc_array_type__record))),
	'first_rec' / Computed(lambda this: this.recs_accessor[0]),
	'recs_accessor' / Computed(lambda this: this.records),
)

_schema = repeat_until_calc_array_type

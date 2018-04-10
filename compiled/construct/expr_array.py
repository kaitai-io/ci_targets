from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Array(4, Int32ul),
	'afloat' / Array(3, Float64l),
	'astr' / Array(3, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'aint_first' / Computed(lambda this: this.aint[0]),
	'afloat_size' / Computed(lambda this: len(this.afloat)),
	'astr_size' / Computed(lambda this: len(this.astr)),
	'aint_min' / Computed(lambda this: min(this.aint)),
	'afloat_min' / Computed(lambda this: min(this.afloat)),
	'aint_size' / Computed(lambda this: len(this.aint)),
	'aint_last' / Computed(lambda this: this.aint[-1]),
	'afloat_last' / Computed(lambda this: this.afloat[-1]),
	'astr_first' / Computed(lambda this: this.astr[0]),
	'astr_last' / Computed(lambda this: this.astr[-1]),
	'aint_max' / Computed(lambda this: max(this.aint)),
	'afloat_first' / Computed(lambda this: this.afloat[0]),
	'astr_min' / Computed(lambda this: min(this.astr)),
	'astr_max' / Computed(lambda this: max(this.astr)),
	'afloat_max' / Computed(lambda this: max(this.afloat)),
)

_schema = expr_array

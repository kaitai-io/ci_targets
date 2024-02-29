from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Array(4, Int32ul),
	'afloat' / Array(3, Float64l),
	'astr' / Array(3, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'afloat_min' / Computed(lambda this: min(this.afloat)),
	'astr_first' / Computed(lambda this: this.astr[0]),
	'astr_max' / Computed(lambda this: max(this.astr)),
	'afloat_last' / Computed(lambda this: this.afloat[-1]),
	'afloat_size' / Computed(lambda this: len(this.afloat)),
	'astr_size' / Computed(lambda this: len(this.astr)),
	'afloat_first' / Computed(lambda this: this.afloat[0]),
	'astr_min' / Computed(lambda this: min(this.astr)),
	'aint_size' / Computed(lambda this: len(this.aint)),
	'aint_last' / Computed(lambda this: this.aint[-1]),
	'astr_last' / Computed(lambda this: this.astr[-1]),
	'aint_min' / Computed(lambda this: min(this.aint)),
	'afloat_max' / Computed(lambda this: max(this.afloat)),
	'aint_max' / Computed(lambda this: max(this.aint)),
	'aint_first' / Computed(lambda this: this.aint[0]),
)

_schema = expr_array

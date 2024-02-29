from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Array(4, Int32ul),
	'afloat' / Array(3, Float64l),
	'astr' / Array(3, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'afloat_first' / Computed(lambda this: this.afloat[0]),
	'afloat_last' / Computed(lambda this: this.afloat[-1]),
	'afloat_max' / Computed(lambda this: max(this.afloat)),
	'afloat_min' / Computed(lambda this: min(this.afloat)),
	'afloat_size' / Computed(lambda this: len(this.afloat)),
	'aint_first' / Computed(lambda this: this.aint[0]),
	'aint_last' / Computed(lambda this: this.aint[-1]),
	'aint_max' / Computed(lambda this: max(this.aint)),
	'aint_min' / Computed(lambda this: min(this.aint)),
	'aint_size' / Computed(lambda this: len(this.aint)),
	'astr_first' / Computed(lambda this: this.astr[0]),
	'astr_last' / Computed(lambda this: this.astr[-1]),
	'astr_max' / Computed(lambda this: max(this.astr)),
	'astr_min' / Computed(lambda this: min(this.astr)),
	'astr_size' / Computed(lambda this: len(this.astr)),
)

_schema = expr_array

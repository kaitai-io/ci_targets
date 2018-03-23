from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Array(4, Int32ul),
	'afloat' / Array(3, Float64l),
	'astr' / Array(3, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'aint_first' / Computed(this.aint[0]),
	'afloat_size' / Computed(len(this.afloat)),
	'astr_size' / Computed(len(this.astr)),
	'aint_min' / Computed(min(this.aint)),
	'afloat_min' / Computed(min(this.afloat)),
	'aint_size' / Computed(len(this.aint)),
	'aint_last' / Computed(this.aint[-1]),
	'afloat_last' / Computed(this.afloat[-1]),
	'astr_first' / Computed(this.astr[0]),
	'astr_last' / Computed(this.astr[-1]),
	'aint_max' / Computed(max(this.aint)),
	'afloat_first' / Computed(this.afloat[0]),
	'astr_min' / Computed(min(this.astr)),
	'astr_max' / Computed(max(this.astr)),
	'afloat_max' / Computed(max(this.afloat)),
)

_schema = expr_array

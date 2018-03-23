from construct import *
from construct.lib import *

expr_array = Struct(
	'aint' / Array(4, Int32ul),
	'afloat' / Array(3, Float64l),
	'astr' / Array(3, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'aint_first' / Computed(self.aint[0]),
	'afloat_size' / Computed(len(self.afloat)),
	'astr_size' / Computed(len(self.astr)),
	'aint_min' / Computed(min(self.aint)),
	'afloat_min' / Computed(min(self.afloat)),
	'aint_size' / Computed(len(self.aint)),
	'aint_last' / Computed(self.aint[-1]),
	'afloat_last' / Computed(self.afloat[-1]),
	'astr_first' / Computed(self.astr[0]),
	'astr_last' / Computed(self.astr[-1]),
	'aint_max' / Computed(max(self.aint)),
	'afloat_first' / Computed(self.afloat[0]),
	'astr_min' / Computed(min(self.astr)),
	'astr_max' / Computed(max(self.astr)),
	'afloat_max' / Computed(max(self.afloat)),
)

_schema = expr_array

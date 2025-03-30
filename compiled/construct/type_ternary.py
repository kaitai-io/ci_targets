from construct import *
from construct.lib import *

type_ternary__dummy = Struct(
	'value' / Int8ub,
)

type_ternary = Struct(
	'dif_wo_hack' / If((not (this.is_hack)), FixedSized(1, LazyBound(lambda: type_ternary__dummy))),
	'dif_with_hack' / FixedSized(1, LazyBound(lambda: type_ternary__dummy)),
	'dif' / Computed(lambda this: (this.dif_wo_hack if (not (this.is_hack)) else this.dif_with_hack)),
	'dif_value' / Computed(lambda this: this.dif.value),
	'is_hack' / Computed(lambda this: True),
)

_schema = type_ternary

from construct import *
from construct.lib import *

type_ternary__dummy = Struct(
	'value' / Int8ub,
)

type_ternary = Struct(
	'dif_wo_hack' / If(not (this.is_hack), FixedSized(1, LazyBound(lambda: type_ternary__dummy))),
	'dif_with_hack' / FixedSized(1, LazyBound(lambda: type_ternary__dummy)),
	'is_hack' / Computed(True),
	'dif' / Computed((this.dif_wo_hack if not (this.is_hack) else this.dif_with_hack)),
	'dif_value' / Computed(this.dif.value),
)

_schema = type_ternary

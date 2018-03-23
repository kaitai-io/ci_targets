from construct import *
from construct.lib import *

type_ternary__dummy = Struct(
	'value' / Int8ub,
)

type_ternary = Struct(
	'dif_wo_hack' / FixedSized(1, type_ternary__dummy),
	'dif_with_hack' / FixedSized(1, type_ternary__dummy),
	'is_hack' / Computed(True),
	'dif' / Computed((self.dif_wo_hack if not (self.is_hack) else self.dif_with_hack)),
	'dif_value' / Computed(self.dif.value),
)

_schema = type_ternary

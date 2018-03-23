from construct import *
from construct.lib import *

type_ternary_opaque = Struct(
	'dif_wo_hack' / FixedSized(12, term_strz),
	'dif_with_hack' / FixedSized(12, term_strz),
	'is_hack' / Computed(False),
	'dif' / Computed((self.dif_wo_hack if not (self.is_hack) else self.dif_with_hack)),
)

_schema = type_ternary_opaque

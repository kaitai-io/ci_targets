from construct import *
from construct.lib import *

type_ternary_opaque = Struct(
	'dif_wo_hack' / If((not (this.is_hack)), FixedSized(12, LazyBound(lambda: term_strz))),
	'dif_with_hack' / If(this.is_hack, FixedSized(12, LazyBound(lambda: term_strz))),
	'dif' / Computed(lambda this: (this.dif_wo_hack if (not (this.is_hack)) else this.dif_with_hack)),
	'is_hack' / Computed(lambda this: False),
)

_schema = type_ternary_opaque

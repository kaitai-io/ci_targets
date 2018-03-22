from construct import *
from construct.lib import *

type_ternary_opaque = Struct(
	'dif_wo_hack' / FixedSized(12, term_strz),
	'dif_with_hack' / FixedSized(12, term_strz),
)

_schema = type_ternary_opaque

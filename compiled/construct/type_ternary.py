from construct import *
from construct.lib import *

type_ternary__dummy = Struct(
	'value' / Int8ub,
)

type_ternary = Struct(
	'dif_wo_hack' / FixedSized(1, type_ternary__dummy),
	'dif_with_hack' / FixedSized(1, type_ternary__dummy),
)

_schema = type_ternary

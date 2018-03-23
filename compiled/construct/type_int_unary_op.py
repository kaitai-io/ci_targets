from construct import *
from construct.lib import *

type_int_unary_op = Struct(
	'value_s2' / Int16sl,
	'value_s8' / Int64sl,
	'unary_s2' / Computed(-(self.value_s2)),
	'unary_s8' / Computed(-(self.value_s8)),
)

_schema = type_int_unary_op

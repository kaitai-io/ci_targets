from construct import *
from construct.lib import *

expr_if_int_ops = Struct(
	'skip' / FixedSized(2, GreedyBytes),
	'it' / If(True, Int16sl),
	'boxed' / If(True, Int16sl),
	'is_eq_prim' / Computed(lambda this: this.it == 16705),
	'is_eq_boxed' / Computed(lambda this: this.it == this.boxed),
)

_schema = expr_if_int_ops

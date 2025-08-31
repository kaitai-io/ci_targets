from construct import *
from construct.lib import *

expr_if_int_eq = Struct(
	'skip' / FixedSized(2, GreedyBytes),
	'seq' / Int16sl,
	'seq_if' / If(True, Int16sl),
	'calc' / Computed(lambda this: 16705),
	'calc_eq_calc_if' / Computed(lambda this: this.calc == this.calc_if),
	'calc_eq_lit' / Computed(lambda this: this.calc == 16705),
	'calc_eq_seq_if' / Computed(lambda this: this.calc == this.seq_if),
	'calc_if' / If(True, Computed(lambda this: 16705)),
	'calc_if_eq_lit' / Computed(lambda this: this.calc_if == 16705),
	'calc_if_eq_seq_if' / Computed(lambda this: this.calc_if == this.seq_if),
	'seq_eq_calc' / Computed(lambda this: this.seq == this.calc),
	'seq_eq_calc_if' / Computed(lambda this: this.seq == this.calc_if),
	'seq_eq_lit' / Computed(lambda this: this.seq == 16705),
	'seq_eq_seq_if' / Computed(lambda this: this.seq == this.seq_if),
	'seq_if_eq_lit' / Computed(lambda this: this.seq_if == 16705),
)

_schema = expr_if_int_eq

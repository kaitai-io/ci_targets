from construct import *
from construct.lib import *

switch_integers2 = Struct(
	'code' / Int8ub,
	'len' / ???,
	'ham' / Bytes(this.len),
	'padding' / If(this.len > 3, Int8ub),
	'len_mod_str' / Computed(str(((this.len * 2) - 1))),
)

_schema = switch_integers2

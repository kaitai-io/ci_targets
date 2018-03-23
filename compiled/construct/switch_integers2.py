from construct import *
from construct.lib import *

switch_integers2 = Struct(
	'code' / Int8ub,
	'len' / ???,
	'ham' / Bytes(self.len),
	'padding' / Int8ub,
	'len_mod_str' / Computed(str(((self.len * 2) - 1))),
)

_schema = switch_integers2

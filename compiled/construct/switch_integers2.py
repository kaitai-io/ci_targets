from construct import *
from construct.lib import *

switch_integers2 = Struct(
	'code' / Int8ub,
	'len' / Switch(this.code, {1: Int8ub, 2: Int16ul, 4: Int32ul, 8: Int64ul, }),
	'ham' / FixedSized(this.len, GreedyBytes),
	'padding' / If(this.len > 3, Int8ub),
	'len_mod_str' / Computed(lambda this: str(this.len * 2 - 1)),
)

_schema = switch_integers2

from construct import *
from construct.lib import *

if_values__code = Struct(
	'opcode' / Int8ub,
)

if_values = Struct(
	'codes' / if_values__code,
)

_schema = if_values

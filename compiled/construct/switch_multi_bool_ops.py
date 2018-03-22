from construct import *
from construct.lib import *

switch_multi_bool_ops__opcode = Struct(
	'code' / Int8ub,
	'body' / ???,
)

switch_multi_bool_ops = Struct(
	'opcodes' / switch_multi_bool_ops__opcode,
)

_schema = switch_multi_bool_ops

from construct import *
from construct.lib import *

switch_multi_bool_ops__opcode = Struct(
	'code' / Int8ub,
	'body' / Switch((this.code if  ((this.code > 0) and (this.code <= 8) and ((True if this.code != 10 else False)))  else 0), {1: Int8ub, 2: Int16ul, 4: Int32ul, 8: Int64ul, }),
)

switch_multi_bool_ops = Struct(
	'opcodes' / GreedyRange(LazyBound(lambda: switch_multi_bool_ops__opcode)),
)

_schema = switch_multi_bool_ops

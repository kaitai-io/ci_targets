from construct import *
from construct.lib import *

if_struct__operation = Struct(
	'opcode' / Int8ub,
	'arg_tuple' / if_struct__arg_tuple,
	'arg_str' / if_struct__arg_str,
)

if_struct__arg_tuple = Struct(
	'num1' / Int8ub,
	'num2' / Int8ub,
)

if_struct__arg_str = Struct(
	'len' / Int8ub,
	'str' / FixedSized(self.len, GreedyString(encoding='UTF-8')),
)

if_struct = Struct(
	'op1' / if_struct__operation,
	'op2' / if_struct__operation,
	'op3' / if_struct__operation,
)

_schema = if_struct

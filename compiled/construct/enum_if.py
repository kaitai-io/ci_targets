from construct import *
from construct.lib import *

enum_if__operation = Struct(
	'opcode' / enum_if__opcodes(Int8ub),
	'arg_tuple' / enum_if__arg_tuple,
	'arg_str' / enum_if__arg_str,
)

enum_if__arg_tuple = Struct(
	'num1' / Int8ub,
	'num2' / Int8ub,
)

enum_if__arg_str = Struct(
	'len' / Int8ub,
	'str' / FixedSized(this.len, GreedyString(encoding='UTF-8')),
)

def enum_if__opcodes(subcon):
	return Enum(subcon,
		a_string=83,
		a_tuple=84,
	)

enum_if = Struct(
	'op1' / enum_if__operation,
	'op2' / enum_if__operation,
	'op3' / enum_if__operation,
)

_schema = enum_if

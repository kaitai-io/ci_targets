from construct import *
from construct.lib import *
import enum

class enum_if__opcodes(enum.IntEnum):
	a_string = 83
	a_tuple = 84

enum_if__arg_str = Struct(
	'len' / Int8ub,
	'str' / FixedSized(this.len, GreedyString(encoding='UTF-8')),
)

enum_if__arg_tuple = Struct(
	'num1' / Int8ub,
	'num2' / Int8ub,
)

enum_if__operation = Struct(
	'opcode' / Enum(Int8ub, enum_if__opcodes),
	'arg_tuple' / If(this.opcode == 'a_tuple', LazyBound(lambda: enum_if__arg_tuple)),
	'arg_str' / If(this.opcode == 'a_string', LazyBound(lambda: enum_if__arg_str)),
)

enum_if = Struct(
	'op1' / LazyBound(lambda: enum_if__operation),
	'op2' / LazyBound(lambda: enum_if__operation),
	'op3' / LazyBound(lambda: enum_if__operation),
)

_schema = enum_if

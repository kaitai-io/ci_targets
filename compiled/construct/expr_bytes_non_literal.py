from construct import *
from construct.lib import *
import struct

expr_bytes_non_literal = Struct(
	'one' / Int8ub,
	'two' / Int8ub,
	'calc_bytes' / Computed(lambda this: struct.pack('2b', this.one, this.two)),
)

_schema = expr_bytes_non_literal

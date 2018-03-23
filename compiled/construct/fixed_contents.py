from construct import *
from construct.lib import *

fixed_contents = Struct(
	'normal' / Const(b"\x50\x41\x43\x4B\x2D\x31"),
	'high_bit_8' / Const(b"\xFF\xFF"),
)

_schema = fixed_contents

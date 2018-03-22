from construct import *
from construct.lib import *

vlq_base128_le__group = Struct(
	'b' / Int8ub,
)

vlq_base128_le = Struct(
	'groups' / vlq_base128_le__group,
)

_schema = vlq_base128_le

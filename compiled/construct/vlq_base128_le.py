from construct import *
from construct.lib import *

vlq_base128_le = Struct(
	'groups' / ???,
)

_schema = vlq_base128_le

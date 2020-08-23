from construct import *
from construct.lib import *

def enum_for_unknown_id__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

enum_for_unknown_id = Struct(
	'one' / enum_for_unknown_id__animal(Int8ub),
)

_schema = enum_for_unknown_id

from construct import *
from construct.lib import *
import enum

class enum_for_unknown_id__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

enum_for_unknown_id = Struct(
	'one' / Enum(Int8ub, enum_for_unknown_id__animal),
)

_schema = enum_for_unknown_id

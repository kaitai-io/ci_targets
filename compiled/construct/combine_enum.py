from construct import *
from construct.lib import *
import enum

class combine_enum__animal(enum.IntEnum):
	pig = 7
	horse = 12

combine_enum = Struct(
	'enum_u4' / Enum(Int32ul, combine_enum__animal),
	'enum_u2' / Enum(Int16ul, combine_enum__animal),
	'enum_u4_u2' / Computed(lambda this: (this.enum_u4 if False else this.enum_u2)),
)

_schema = combine_enum

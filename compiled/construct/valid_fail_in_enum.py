from construct import *
from construct.lib import *
import enum

class valid_fail_in_enum__animal(enum.IntEnum):
	dog = 4
	chicken = 12

valid_fail_in_enum = Struct(
	'foo' / Enum(Int32ul, valid_fail_in_enum__animal),
)

_schema = valid_fail_in_enum

from construct import *
from construct.lib import *
import enum

class params_enum__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12

params_enum__with_param = Struct(
	'is_cat' / Computed(lambda this: this.enumerated_one == 'cat'),
)

params_enum = Struct(
	'one' / Enum(Int8ub, params_enum__animal),
	'invoke_with_param' / LazyBound(lambda: params_enum__with_param),
)

_schema = params_enum

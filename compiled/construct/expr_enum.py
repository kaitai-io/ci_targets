from construct import *
from construct.lib import *
import enum

class expr_enum__animal(enum.IntEnum):
	dog = 4
	cat = 7
	chicken = 12
	boom = 102

expr_enum = Struct(
	'one' / Int8ub,
	'const_dog' / Computed(lambda this: KaitaiStream.resolve_enum(ExprEnum.Animal, 4)),
	'derived_boom' / Computed(lambda this: KaitaiStream.resolve_enum(ExprEnum.Animal, this.one)),
	'derived_dog' / Computed(lambda this: KaitaiStream.resolve_enum(ExprEnum.Animal, this.one - 98)),
)

_schema = expr_enum

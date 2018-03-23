from construct import *
from construct.lib import *

def expr_enum__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
		boom=102,
	)

expr_enum = Struct(
	'one' / Int8ub,
	'const_dog' / Computed(self._root.Animal(4)),
	'derived_boom' / Computed(self._root.Animal(self.one)),
	'derived_dog' / Computed(self._root.Animal((self.one - 98))),
)

_schema = expr_enum

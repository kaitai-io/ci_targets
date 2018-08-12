from construct import *
from construct.lib import *

params_enum__with_param = Struct(
	'is_cat' / Computed(lambda this: this.enumerated_one == self._root.Animal.cat),
)

def params_enum__animal(subcon):
	return Enum(subcon,
		cat=1,
		dog=2,
	)

params_enum = Struct(
	'one' / params_enum__animal(Int8ub),
	'invoke_with_param' / LazyBound(lambda: params_enum__with_param),
)

_schema = params_enum

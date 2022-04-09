from construct import *
from construct.lib import *

def params_enum__animal(subcon):
	return Enum(subcon,
		dog=4,
		cat=7,
		chicken=12,
	)

params_enum__with_param = Struct(
	'is_cat' / Computed(lambda this: this.enumerated_one == ParamsEnum.Animal.cat),
)

params_enum = Struct(
	'one' / params_enum__animal(Int8ub),
	'invoke_with_param' / LazyBound(lambda: params_enum__with_param),
)

_schema = params_enum

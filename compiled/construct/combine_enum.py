from construct import *
from construct.lib import *

def combine_enum__animal(subcon):
	return Enum(subcon,
		pig=7,
		horse=12,
	)

combine_enum = Struct(
	'enum_u4' / combine_enum__animal(Int32ul),
	'enum_u2' / combine_enum__animal(Int16ul),
	'enum_u4_u2' / Computed(lambda this: (this.enum_u4 if False else this.enum_u2)),
)

_schema = combine_enum

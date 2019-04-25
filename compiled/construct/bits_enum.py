from construct import *
from construct.lib import *

def bits_enum__animal(subcon):
	return Enum(subcon,
		cat=0,
		dog=1,
		horse=4,
		platypus=5,
	)

bits_enum = Struct(
	'one' / bits_enum__animal(???),
	'two' / bits_enum__animal(???),
	'three' / bits_enum__animal(???),
)

_schema = bits_enum

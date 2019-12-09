from construct import *
from construct.lib import *

enum_import = Struct(
	'pet_1' / enum_0__animal(Int32ul),
	'pet_2' / enum_deep__container1__container2__animal(Int32ul),
)

_schema = enum_import

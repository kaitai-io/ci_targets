from construct import *
from construct.lib import *

enum_import_seq = Struct(
	'pet_1' / Enum(Int32ul, enum_0__animal),
	'pet_2' / Enum(Int32ul, enum_deep__container1__container2__animal),
)

_schema = enum_import_seq

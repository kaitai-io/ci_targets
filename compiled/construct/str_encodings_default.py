from construct import *
from construct.lib import *

str_encodings_default = Struct(
	'len_of_1' / Int16ul,
	'str1' / ???,
	'rest' / ???,
)

_schema = str_encodings_default

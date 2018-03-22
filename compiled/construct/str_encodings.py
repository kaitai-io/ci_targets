from construct import *
from construct.lib import *

str_encodings = Struct(
	'len_of_1' / Int16ul,
	'str1' / ???,
	'len_of_2' / Int16ul,
	'str2' / ???,
	'len_of_3' / Int16ul,
	'str3' / ???,
	'len_of_4' / Int16ul,
	'str4' / ???,
)

_schema = str_encodings

from construct import *
from construct.lib import *

str_encodings_default = Struct(
	'len_of_1' / Int16ul,
	'str1' / FixedSized(self.len_of_1, GreedyString(encoding='UTF-8')),
	'rest' / ???,
)

_schema = str_encodings_default

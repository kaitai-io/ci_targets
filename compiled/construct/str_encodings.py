from construct import *
from construct.lib import *

str_encodings = Struct(
	'len_of_1' / Int16ul,
	'str1' / FixedSized(this.len_of_1, GreedyString(encoding='ASCII')),
	'len_of_2' / Int16ul,
	'str2' / FixedSized(this.len_of_2, GreedyString(encoding='UTF-8')),
	'len_of_3' / Int16ul,
	'str3' / FixedSized(this.len_of_3, GreedyString(encoding='Shift_JIS')),
	'len_of_4' / Int16ul,
	'str4' / FixedSized(this.len_of_4, GreedyString(encoding='IBM437')),
)

_schema = str_encodings

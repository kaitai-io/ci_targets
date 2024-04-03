from construct import *
from construct.lib import *

str_encodings_escaping_enc__str1_wrapper = Struct(
	'v' / Pointer(0, GreedyString(encoding='ASCII\\x')),
)

str_encodings_escaping_enc__str2_wrapper = Struct(
	'v' / Pointer(0, GreedyString(encoding='UTF-8\'x')),
)

str_encodings_escaping_enc__str3_wrapper = Struct(
	'v' / Pointer(0, GreedyString(encoding='SJIS\"x')),
)

str_encodings_escaping_enc__str4_wrapper = Struct(
	'v' / Pointer(0, GreedyString(encoding='IBM437\nx')),
)

str_encodings_escaping_enc = Struct(
	'len_of_1' / Int16ul,
	'str1' / FixedSized(this.len_of_1, LazyBound(lambda: str_encodings_escaping_enc__str1_wrapper)),
	'len_of_2' / Int16ul,
	'str2' / FixedSized(this.len_of_2, LazyBound(lambda: str_encodings_escaping_enc__str2_wrapper)),
	'len_of_3' / Int16ul,
	'str3' / FixedSized(this.len_of_3, LazyBound(lambda: str_encodings_escaping_enc__str3_wrapper)),
	'len_of_4' / Int16ul,
	'str4' / FixedSized(this.len_of_4, LazyBound(lambda: str_encodings_escaping_enc__str4_wrapper)),
)

_schema = str_encodings_escaping_enc

from construct import *
from construct.lib import *

str_encodings_escaping_to_s = Struct(
	'len_of_1' / Int16ul,
	'str1_raw' / FixedSized(this.len_of_1, GreedyBytes),
	'len_of_2' / Int16ul,
	'str2_raw' / FixedSized(this.len_of_2, GreedyBytes),
	'len_of_3' / Int16ul,
	'str3_raw' / FixedSized(this.len_of_3, GreedyBytes),
	'len_of_4' / Int16ul,
	'str4_raw' / FixedSized(this.len_of_4, GreedyBytes),
	'str1' / Computed(lambda this: (this.str1_raw).decode(u"ASCII\\\\x")),
	'str2' / Computed(lambda this: (this.str2_raw).decode(u"UTF-8\\'x")),
	'str3' / Computed(lambda this: (this.str3_raw).decode(u"SJIS\\\"x")),
	'str4' / Computed(lambda this: (this.str4_raw).decode(u"IBM437\\nx")),
)

_schema = str_encodings_escaping_to_s

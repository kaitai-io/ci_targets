from construct import *
from construct.lib import *

expr_str_encodings = Struct(
	'len_of_1' / Int16ul,
	'str1' / FixedSized(this.len_of_1, GreedyString(encoding='ASCII')),
	'len_of_2' / Int16ul,
	'str2' / FixedSized(this.len_of_2, GreedyString(encoding='UTF-8')),
	'len_of_3' / Int16ul,
	'str3' / FixedSized(this.len_of_3, GreedyString(encoding='SJIS')),
	'len_of_4' / Int16ul,
	'str4' / FixedSized(this.len_of_4, GreedyString(encoding='IBM437')),
	'str1_eq' / Computed(lambda this: this.str1 == u"Some ASCII"),
	'str2_eq' / Computed(lambda this: this.str2 == u"\u3053\u3093\u306b\u3061\u306f"),
	'str3_eq_str2' / Computed(lambda this: this.str3 == this.str2),
	'str4_eq' / Computed(lambda this: this.str4 == u"\u2591\u2592\u2593"),
	'str3_eq' / Computed(lambda this: this.str3 == u"\u3053\u3093\u306b\u3061\u306f"),
	'str4_gt_str_calc' / Computed(lambda this: this.str4 > u"\u2524"),
	'str4_gt_str_from_bytes' / Computed(lambda this: this.str4 > (b"\xB4").decode("IBM437")),
)

_schema = expr_str_encodings

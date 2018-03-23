from construct import *
from construct.lib import *

str_literals = Struct(
	'octal_eatup2' / Computed(u"\0022"),
	'backslashes' / Computed(u"\\\\\\"),
	'octal_eatup' / Computed(u"\00022"),
	'double_quotes' / Computed(u"\"\"\""),
	'complex_str' / Computed(u"\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"),
)

_schema = str_literals

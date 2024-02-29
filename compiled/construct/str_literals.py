from construct import *
from construct.lib import *

str_literals = Struct(
	'backslashes' / Computed(lambda this: u"\\\\\\"),
	'complex_str' / Computed(lambda this: u"\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"),
	'double_quotes' / Computed(lambda this: u"\"\"\""),
	'octal_eatup' / Computed(lambda this: u"\00022"),
	'octal_eatup2' / Computed(lambda this: u"\0022"),
)

_schema = str_literals

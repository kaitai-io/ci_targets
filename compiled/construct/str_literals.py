from construct import *
from construct.lib import *

str_literals = Struct(
	'backslashes' / Computed(lambda this: "\\\\\\"),
	'complex_str' / Computed(lambda this: "\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"),
	'double_quotes' / Computed(lambda this: "\"\"\""),
	'octal_eatup' / Computed(lambda this: "\00022"),
	'octal_eatup2' / Computed(lambda this: "\0022"),
)

_schema = str_literals

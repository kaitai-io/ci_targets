from construct import *
from construct.lib import *

str_pad_term_empty = Struct(
	'str_pad' / ???,
	'str_term' / ???,
	'str_term_and_pad' / ???,
	'str_term_include' / ???,
)

_schema = str_pad_term_empty

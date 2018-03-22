from construct import *
from construct.lib import *

bytes_pad_term = Struct(
	'str_pad' / ???,
	'str_term' / ???,
	'str_term_and_pad' / ???,
	'str_term_include' / ???,
)

_schema = bytes_pad_term

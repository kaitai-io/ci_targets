from construct import *
from construct.lib import *

bytes_pad_term = Struct(
	'str_pad' / Bytes(20),
	'str_term' / Bytes(20),
	'str_term_and_pad' / Bytes(20),
	'str_term_include' / Bytes(20),
)

_schema = bytes_pad_term

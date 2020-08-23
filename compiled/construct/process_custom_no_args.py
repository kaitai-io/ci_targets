from construct import *
from construct.lib import *

process_custom_no_args = Struct(
	'buf' / FixedSized(5, GreedyBytes),
)

_schema = process_custom_no_args

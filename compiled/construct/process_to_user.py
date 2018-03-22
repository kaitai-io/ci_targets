from construct import *
from construct.lib import *

process_to_user__just_str = Struct(
	'str' / GreedyString(encoding='UTF-8'),
)

process_to_user = Struct(
	'buf1' / FixedSized(5, process_to_user__just_str),
)

_schema = process_to_user

from construct import *
from construct.lib import *

valid_not_parsed_if = Struct(
	'not_parsed' / If(False, Int8ub),
	'parsed' / If(True, Int8ub),
)

_schema = valid_not_parsed_if

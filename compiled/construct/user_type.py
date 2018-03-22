from construct import *
from construct.lib import *

user_type__header = Struct(
	'width' / Int32ul,
	'height' / Int32ul,
)

user_type = Struct(
	'one' / user_type__header,
)

_schema = user_type

from construct import *
from construct.lib import *

repeat_until_sized = Struct(
	'records' / ???,
)

_schema = repeat_until_sized

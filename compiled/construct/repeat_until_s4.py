from construct import *
from construct.lib import *

repeat_until_s4 = Struct(
	'entries' / Int32sl,
	'afterall' / ???,
)

_schema = repeat_until_s4

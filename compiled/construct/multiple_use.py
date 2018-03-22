from construct import *
from construct.lib import *

multiple_use = Struct(
	't1' / ???,
	't2' / ???,
)

_schema = multiple_use

from construct import *
from construct.lib import *

non_standard = Struct(
	'foo' / Int8ub,
	'bar' / ???,
	'vi' / Computed(this.foo),
	'pi' / Pointer(0, Int8ub),
)

_schema = non_standard

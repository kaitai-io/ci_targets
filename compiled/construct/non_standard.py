from construct import *
from construct.lib import *

non_standard = Struct(
	'foo' / Int8ub,
	'bar' / ???,
	'vi' / Computed(self.foo),
	'pi' / Int8ub,
)

_schema = non_standard

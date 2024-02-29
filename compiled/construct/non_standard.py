from construct import *
from construct.lib import *

non_standard = Struct(
	'foo' / Int8ub,
	'bar' / Switch(this.foo, {42: Int16ul, 43: Int32ul, }),
	'pi' / Pointer(0, Int8ub),
	'vi' / Computed(lambda this: this.foo),
)

_schema = non_standard

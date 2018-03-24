from construct import *
from construct.lib import *

imports0 = Struct(
	'two' / Int8ub,
	'hw' / LazyBound(lambda: hello_world),
	'hw_one' / Computed(this.hw.one),
)

_schema = imports0

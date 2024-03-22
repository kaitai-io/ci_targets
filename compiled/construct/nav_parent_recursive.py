from construct import *
from construct.lib import *

nav_parent_recursive = Struct(
	'value' / Int8ub,
	'next' / If(this.value == 255, LazyBound(lambda: nav_parent_recursive)),
	'parent_value' / If(this.value != 255, Computed(lambda this: this._.value)),
)

_schema = nav_parent_recursive

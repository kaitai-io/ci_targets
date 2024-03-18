from construct import *
from construct.lib import *

nav_root_recursive = Struct(
	'value' / Int8ub,
	'next' / If(this.value == 255, LazyBound(lambda: nav_root_recursive)),
	'root_value' / Computed(lambda this: this._root.value),
)

_schema = nav_root_recursive

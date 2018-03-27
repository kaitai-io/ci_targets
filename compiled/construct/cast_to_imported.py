from construct import *
from construct.lib import *

cast_to_imported = Struct(
	'one' / LazyBound(lambda: hello_world),
	'one_casted' / Computed(lambda this: this.one),
)

_schema = cast_to_imported

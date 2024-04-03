from construct import *
from construct.lib import *

cast_to_imported2 = Struct(
	'hw' / Computed(lambda this: this.hw_param),
)

_schema = cast_to_imported2

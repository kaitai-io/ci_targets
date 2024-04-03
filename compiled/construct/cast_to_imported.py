from construct import *
from construct.lib import *

cast_to_imported = Struct(
	'hw_one' / Computed(lambda this: this.hw_param.one),
)

_schema = cast_to_imported

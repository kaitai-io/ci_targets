from construct import *
from construct.lib import *

cast_to_imported = Struct(
	'one' / hello_world,
	'one_casted' / Computed(this.one),
)

_schema = cast_to_imported

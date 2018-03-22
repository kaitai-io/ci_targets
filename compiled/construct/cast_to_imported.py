from construct import *
from construct.lib import *

cast_to_imported = Struct(
	'one' / ???,
)

_schema = cast_to_imported

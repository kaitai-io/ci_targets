from construct import *
from construct.lib import *

cast_to_imported = Struct(
	'one' / hello_world,
)

_schema = cast_to_imported

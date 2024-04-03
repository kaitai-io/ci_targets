from construct import *
from construct.lib import *

imports_cast_to_imported = Struct(
	'hw' / LazyBound(lambda: hello_world),
	'two' / LazyBound(lambda: cast_to_imported),
)

_schema = imports_cast_to_imported

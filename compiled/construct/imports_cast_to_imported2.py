from construct import *
from construct.lib import *

imports_cast_to_imported2 = Struct(
	'hw' / LazyBound(lambda: hello_world),
	'two' / LazyBound(lambda: cast_to_imported2),
)

_schema = imports_cast_to_imported2

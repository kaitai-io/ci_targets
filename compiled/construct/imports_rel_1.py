from construct import *
from construct.lib import *

imports_rel_1 = Struct(
	'one' / Int8ub,
	'two' / imported_1,
)

_schema = imports_rel_1

from construct import *
from construct.lib import *

switch_integers2 = Struct(
	'code' / Int8ub,
	'len' / ???,
	'ham' / ???,
	'padding' / Int8ub,
)

_schema = switch_integers2

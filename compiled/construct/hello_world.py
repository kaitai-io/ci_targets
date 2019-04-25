from construct import *
from construct.lib import *

hello_world = Struct(
	'one' / Int8ub,
)

_schema = hello_world

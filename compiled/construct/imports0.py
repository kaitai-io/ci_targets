from construct import *
from construct.lib import *

imports0 = Struct(
	'two' / Int8ub,
	'hw' / hello_world,
)

_schema = imports0

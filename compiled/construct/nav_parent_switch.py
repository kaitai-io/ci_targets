from construct import *
from construct.lib import *

nav_parent_switch__element_1 = Struct(
	'foo' / Int8ub,
	'subelement' / nav_parent_switch__subelement_1,
)

nav_parent_switch__subelement_1 = Struct(
	'bar' / Int8ub,
)

nav_parent_switch = Struct(
	'category' / Int8ub,
	'content' / ???,
)

_schema = nav_parent_switch

from construct import *
from construct.lib import *

valid_switch = Struct(
	'a' / Int8ub,
	'b' / Switch(this.a, {80: Int16ul, }, default=Int16ub),
)

_schema = valid_switch

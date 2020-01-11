from construct import *
from construct.lib import *

debug_switch_user__one = Struct(
	'val' / Int16sl,
)

debug_switch_user__two = Struct(
	'val' / Int16ul,
)

debug_switch_user = Struct(
	'code' / Int8ub,
	'data' / Switch(this.code, {1: LazyBound(lambda: debug_switch_user__one), 2: LazyBound(lambda: debug_switch_user__two), }),
)

_schema = debug_switch_user

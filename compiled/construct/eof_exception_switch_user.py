from construct import *
from construct.lib import *

eof_exception_switch_user__one = Struct(
	'val' / Int16sl,
)

eof_exception_switch_user__two = Struct(
	'val' / Int16ul,
)

eof_exception_switch_user = Struct(
	'code' / Int16ul,
	'data' / Switch(this.code, {2: LazyBound(lambda: eof_exception_switch_user__two), 511: LazyBound(lambda: eof_exception_switch_user__one), }),
)

_schema = eof_exception_switch_user

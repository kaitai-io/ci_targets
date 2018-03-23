from construct import *
from construct.lib import *

str_literals2 = Struct(
	'dollar1' / Computed(u"$foo"),
	'dollar2' / Computed(u"${foo}"),
	'hash' / Computed(u"#{foo}"),
	'at_sign' / Computed(u"@foo"),
)

_schema = str_literals2

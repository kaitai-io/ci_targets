from construct import *
from construct.lib import *

str_literals2 = Struct(
	'at_sign' / Computed(lambda this: u"@foo"),
	'dollar1' / Computed(lambda this: u"$foo"),
	'dollar2' / Computed(lambda this: u"${foo}"),
	'hash' / Computed(lambda this: u"#{foo}"),
)

_schema = str_literals2

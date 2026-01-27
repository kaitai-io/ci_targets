from construct import *
from construct.lib import *

str_literals2 = Struct(
	'at_sign' / Computed(lambda this: "@foo"),
	'dollar1' / Computed(lambda this: "$foo"),
	'dollar2' / Computed(lambda this: "${foo}"),
	'hash' / Computed(lambda this: "#{foo}"),
)

_schema = str_literals2

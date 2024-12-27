from construct import *
from construct.lib import *

debug_array_user_current_excluded__cat = Struct(
	'meow' / FixedSized(3 - len(this._.array_of_cats), GreedyBytes),
)

debug_array_user_current_excluded = Struct(
	'array_of_cats' / Array(3, LazyBound(lambda: debug_array_user_current_excluded__cat)),
)

_schema = debug_array_user_current_excluded

from construct import *
from construct.lib import *

nav_parent_switch_cast__foo__common = Struct(
	'flag' / Computed(lambda this: this._._.flag),
)

nav_parent_switch_cast__foo__one = Struct(
	'branch' / LazyBound(lambda: nav_parent_switch_cast__foo__common),
)

nav_parent_switch_cast__foo__zero = Struct(
	'branch' / LazyBound(lambda: nav_parent_switch_cast__foo__common),
)

nav_parent_switch_cast__foo = Struct(
	'buf_type' / Int8ub,
	'flag' / Int8ub,
	'buf' / Switch(this.buf_type, {0: FixedSized(4, LazyBound(lambda: nav_parent_switch_cast__foo__zero)), 1: FixedSized(4, LazyBound(lambda: nav_parent_switch_cast__foo__one)), }, default=FixedSized(4, GreedyBytes)),
)

nav_parent_switch_cast = Struct(
	'main' / LazyBound(lambda: nav_parent_switch_cast__foo),
)

_schema = nav_parent_switch_cast

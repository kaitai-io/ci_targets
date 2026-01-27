from construct import *
from construct.lib import *

nav_parent2__tag__tag_char = Struct(
	'content' / FixedSized(this._.num_items, GreedyString(encoding='ASCII')),
)

nav_parent2__tag = Struct(
	'name' / FixedSized(4, GreedyString(encoding='ASCII')),
	'ofs' / Int32ul,
	'num_items' / Int32ul,
	'tag_content' / Pointer(this.ofs, Switch(this.name, {"RAHC": LazyBound(lambda: nav_parent2__tag__tag_char), })),
)

nav_parent2 = Struct(
	'ofs_tags' / Int32ul,
	'num_tags' / Int32ul,
	'tags' / Array(this.num_tags, LazyBound(lambda: nav_parent2__tag)),
)

_schema = nav_parent2

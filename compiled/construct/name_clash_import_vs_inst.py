from construct import *
from construct.lib import *

name_clash_import_vs_inst = Struct(
	'integers' / Pointer(0, LazyBound(lambda: integers)),
	'std' / Computed(lambda this: 1 + 2),
)

_schema = name_clash_import_vs_inst

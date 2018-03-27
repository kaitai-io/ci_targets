from construct import *
from construct.lib import *

recursive_one__fini = Struct(
	'finisher' / Int16ul,
)

recursive_one = Struct(
	'one' / Int8ub,
	'next' / Switch((this.one & 3), {0: LazyBound(lambda: recursive_one), 1: LazyBound(lambda: recursive_one), 2: LazyBound(lambda: recursive_one), 3: LazyBound(lambda: recursive_one__fini), }),
)

_schema = recursive_one

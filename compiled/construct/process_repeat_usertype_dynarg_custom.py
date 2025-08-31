from construct import *
from construct.lib import *

process_repeat_usertype_dynarg_custom__block = Struct(
	'a' / Int32ul,
)

process_repeat_usertype_dynarg_custom__blocks_b_wrapper = Struct(
	'dummy' / Int8ub,
	'blocks_0_b' / Pointer(4, Int8ub),
	'blocks_1_b' / Pointer(4, Int8ub),
)

process_repeat_usertype_dynarg_custom = Struct(
	'blocks' / Array(2, FixedSized(5, LazyBound(lambda: process_repeat_usertype_dynarg_custom__block))),
	'blocks_b' / LazyBound(lambda: process_repeat_usertype_dynarg_custom__blocks_b_wrapper),
)

_schema = process_repeat_usertype_dynarg_custom

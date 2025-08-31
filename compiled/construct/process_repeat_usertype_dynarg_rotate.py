from construct import *
from construct.lib import *

process_repeat_usertype_dynarg_rotate__block = Struct(
	'a' / Int16ul,
)

process_repeat_usertype_dynarg_rotate__blocks_b_wrapper = Struct(
	'dummy' / Int8ub,
	'blocks_rol_0_b' / Pointer(2, Int8ub),
	'blocks_rol_1_b' / Pointer(2, Int8ub),
	'blocks_ror_0_b' / Pointer(2, Int8ub),
	'blocks_ror_1_b' / Pointer(2, Int8ub),
	'blocks_ror_2_b' / Pointer(2, Int8ub),
)

process_repeat_usertype_dynarg_rotate = Struct(
	'blocks_rol' / Array(2, FixedSized(3, LazyBound(lambda: process_repeat_usertype_dynarg_rotate__block))),
	'blocks_ror' / Array(3, FixedSized(3, LazyBound(lambda: process_repeat_usertype_dynarg_rotate__block))),
	'blocks_b' / LazyBound(lambda: process_repeat_usertype_dynarg_rotate__blocks_b_wrapper),
)

_schema = process_repeat_usertype_dynarg_rotate

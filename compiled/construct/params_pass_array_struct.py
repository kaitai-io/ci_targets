from construct import *
from construct.lib import *

params_pass_array_struct__bar = Struct(
	'b' / Int8ub,
)

params_pass_array_struct__foo = Struct(
	'f' / Int8ub,
)

params_pass_array_struct__struct_type = Struct(
)

params_pass_array_struct = Struct(
	'one' / LazyBound(lambda: params_pass_array_struct__foo),
	'two' / LazyBound(lambda: params_pass_array_struct__bar),
	'pass_structs' / LazyBound(lambda: params_pass_array_struct__struct_type),
	'one_two' / Computed(lambda this: [this.one, this.two]),
)

_schema = params_pass_array_struct

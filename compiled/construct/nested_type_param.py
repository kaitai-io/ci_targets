from construct import *
from construct.lib import *

nested_type_param__nested__my_type = Struct(
	'body' / FixedSized(this.my_len, GreedyString(encoding='ASCII')),
)

nested_type_param__nested = Struct(
)

nested_type_param = Struct(
	'main_seq' / LazyBound(lambda: nested_type_param__nested__my_type),
)

_schema = nested_type_param

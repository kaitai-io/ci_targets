from construct import *
from construct.lib import *

nested_same_name = Struct(
	'main_data' / ???,
	'dummy' / ???,
)

_schema = nested_same_name

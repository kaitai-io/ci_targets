from construct import *
from construct.lib import *

nested_same_name2 = Struct(
	'version' / Int32ul,
	'main_data' / ???,
	'dummy' / ???,
)

_schema = nested_same_name2

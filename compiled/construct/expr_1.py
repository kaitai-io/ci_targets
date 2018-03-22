from construct import *
from construct.lib import *

expr_1 = Struct(
	'len_of_1' / Int16ul,
	'str1' / ???,
)

_schema = expr_1

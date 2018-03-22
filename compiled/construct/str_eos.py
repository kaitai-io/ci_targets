from construct import *
from construct.lib import *

str_eos = Struct(
	'str' / GreedyString(encoding='UTF-8'),
)

_schema = str_eos

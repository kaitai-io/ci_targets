from construct import *
from construct.lib import *

params_def = Struct(
	'buf' / FixedSized(self.len, GreedyString(encoding='UTF-8')),
	'trailer' / Int8ub,
)

_schema = params_def

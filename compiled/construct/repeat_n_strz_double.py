from construct import *
from construct.lib import *

repeat_n_strz_double = Struct(
	'qty' / Int32ul,
	'lines1' / Array(self.qty // 2, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
	'lines2' / Array(self.qty // 2, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
)

_schema = repeat_n_strz_double

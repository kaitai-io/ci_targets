from construct import *
from construct.lib import *

repeat_n_strz = Struct(
	'qty' / Int32ul,
	'lines' / Array(this.qty, NullTerminated(GreedyString(encoding='UTF-8'), term=b'\x00', include=False, consume=True)),
)

_schema = repeat_n_strz

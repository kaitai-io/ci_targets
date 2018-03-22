from construct import *
from construct.lib import *

expr_io_eof = Struct(
	'substream1' / ???,
	'substream2' / ???,
)

_schema = expr_io_eof

from construct import *
from construct.lib import *

bcd_user_type_le = Struct(
	'ltr' / ???,
	'rtl' / ???,
	'leading_zero_ltr' / ???,
)

_schema = bcd_user_type_le

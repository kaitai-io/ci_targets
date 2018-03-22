from construct import *
from construct.lib import *

ts_packet_header = Struct(
	'sync_byte' / Int8ub,
	'transport_error_indicator' / ???,
	'payload_unit_start_indicator' / ???,
	'transport_priority' / ???,
	'pid' / ???,
	'transport_scrambling_control' / ???,
	'adaptation_field_control' / ???,
	'continuity_counter' / ???,
	'ts_packet_remain' / ???,
)

_schema = ts_packet_header

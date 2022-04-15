from construct import *
from construct.lib import *
import enum

class ts_packet_header__adaptation_field_control_enum(enum.IntEnum):
	reserved = 0
	payload_only = 1
	adaptation_field_only = 2
	adaptation_field_and_payload = 3

ts_packet_header = Struct(
	'sync_byte' / Int8ub,
	'transport_error_indicator' / ???,
	'payload_unit_start_indicator' / ???,
	'transport_priority' / ???,
	'pid' / ???,
	'transport_scrambling_control' / ???,
	'adaptation_field_control' / Enum(???, ts_packet_header__adaptation_field_control_enum),
	'continuity_counter' / ???,
	'ts_packet_remain' / FixedSized(184, GreedyBytes),
)

_schema = ts_packet_header

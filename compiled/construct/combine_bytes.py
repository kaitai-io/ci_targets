from construct import *
from construct.lib import *

combine_bytes = Struct(
	'bytes_term' / NullTerminated(GreedyBytes, term=b'\x7C', include=False, consume=True),
	'bytes_limit' / FixedSized(4, GreedyBytes),
	'bytes_eos' / GreedyBytes,
	'bytes_calc' / Computed(lambda this: b"\x52\x6E\x44"),
	'eos_or_calc' / Computed(lambda this: (this.bytes_eos if True else this.bytes_calc)),
	'limit_or_calc' / Computed(lambda this: (this.bytes_limit if False else this.bytes_calc)),
	'limit_or_eos' / Computed(lambda this: (this.bytes_limit if True else this.bytes_eos)),
	'term_or_calc' / Computed(lambda this: (this.bytes_term if True else this.bytes_calc)),
	'term_or_eos' / Computed(lambda this: (this.bytes_term if False else this.bytes_eos)),
	'term_or_limit' / Computed(lambda this: (this.bytes_term if True else this.bytes_limit)),
)

_schema = combine_bytes

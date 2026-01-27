from construct import *
from construct.lib import *

str_literals_latin1 = Struct(
	'len_parsed' / Int16ul,
	'parsed' / FixedSized(this.len_parsed, GreedyString(encoding='UTF-8')),
	'parsed_eq_literal' / Computed(lambda this: this.parsed == "\243"),
)

_schema = str_literals_latin1

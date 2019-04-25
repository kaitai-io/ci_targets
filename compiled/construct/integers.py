from construct import *
from construct.lib import *

integers = Struct(
	'magic1' / Const(b"\x50\x41\x43\x4B\x2D\x31"),
	'uint8' / Int8ub,
	'sint8' / Int8sb,
	'magic_uint' / Const(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46"),
	'uint16' / Int16ul,
	'uint32' / Int32ul,
	'uint64' / Int64ul,
	'magic_sint' / Const(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46"),
	'sint16' / Int16sl,
	'sint32' / Int32sl,
	'sint64' / Int64sl,
	'magic_uint_le' / Const(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45"),
	'uint16le' / Int16ul,
	'uint32le' / Int32ul,
	'uint64le' / Int64ul,
	'magic_sint_le' / Const(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45"),
	'sint16le' / Int16sl,
	'sint32le' / Int32sl,
	'sint64le' / Int64sl,
	'magic_uint_be' / Const(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45"),
	'uint16be' / Int16ub,
	'uint32be' / Int32ub,
	'uint64be' / Int64ub,
	'magic_sint_be' / Const(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45"),
	'sint16be' / Int16sb,
	'sint32be' / Int32sb,
	'sint64be' / Int64sb,
)

_schema = integers

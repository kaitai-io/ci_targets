# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumLongRangeS(KaitaiStruct):

    class Constants(IntEnum):
        long_min = -9223372036854775808
        int_below_min = -2147483649
        int_min = -2147483648
        zero = 0
        int_max = 2147483647
        int_over_max = 2147483648
        long_max = 9223372036854775807
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f2 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f3 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f4 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f5 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f6 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f7 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())



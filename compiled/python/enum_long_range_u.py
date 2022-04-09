# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumLongRangeU(KaitaiStruct):

    class Constants(Enum):
        zero = 0
        int_max = 4294967295
        int_over_max = 4294967296
        long_max = 9223372036854775807
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumLongRangeU.Constants, self._io.read_u8be())
        self.f2 = KaitaiStream.resolve_enum(EnumLongRangeU.Constants, self._io.read_u8be())
        self.f3 = KaitaiStream.resolve_enum(EnumLongRangeU.Constants, self._io.read_u8be())
        self.f4 = KaitaiStream.resolve_enum(EnumLongRangeU.Constants, self._io.read_u8be())



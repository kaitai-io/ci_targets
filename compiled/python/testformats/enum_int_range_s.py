# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumIntRangeS(KaitaiStruct):

    class Constants(IntEnum):
        int_min = -2147483648
        zero = 0
        int_max = 2147483647
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())
        self.f2 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())
        self.f3 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())


    def _fetch_instances(self):
        pass



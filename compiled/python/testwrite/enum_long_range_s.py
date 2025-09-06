# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumLongRangeS(ReadWriteKaitaiStruct):

    class Constants(IntEnum):
        long_min = -9223372036854775808
        int_below_min = -2147483649
        int_min = -2147483648
        zero = 0
        int_max = 2147483647
        int_over_max = 2147483648
        long_max = 9223372036854775807
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumLongRangeS, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f2 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f3 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f4 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f5 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f6 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self.f7 = KaitaiStream.resolve_enum(EnumLongRangeS.Constants, self._io.read_s8be())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumLongRangeS, self)._write__seq(io)
        self._io.write_s8be(int(self.f1))
        self._io.write_s8be(int(self.f2))
        self._io.write_s8be(int(self.f3))
        self._io.write_s8be(int(self.f4))
        self._io.write_s8be(int(self.f5))
        self._io.write_s8be(int(self.f6))
        self._io.write_s8be(int(self.f7))


    def _check(self):
        self._dirty = False



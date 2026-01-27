# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumIntRangeS(ReadWriteKaitaiStruct):

    class Constants(IntEnum):
        int_min = -2147483648
        zero = 0
        int_max = 2147483647
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())
        self.f2 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())
        self.f3 = KaitaiStream.resolve_enum(EnumIntRangeS.Constants, self._io.read_s4be())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_s4be(int(self.f1))
        self._io.write_s4be(int(self.f2))
        self._io.write_s4be(int(self.f3))


    def _check(self):
        self._dirty = False



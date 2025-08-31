# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumIntRangeU(ReadWriteKaitaiStruct):

    class Constants(IntEnum):
        zero = 0
        int_max = 4294967295
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumIntRangeU.Constants, self._io.read_u4be())
        self.f2 = KaitaiStream.resolve_enum(EnumIntRangeU.Constants, self._io.read_u4be())


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumIntRangeU, self)._write__seq(io)
        self._io.write_u4be(int(self.f1))
        self._io.write_u4be(int(self.f2))


    def _check(self):
        pass



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumNegative(ReadWriteKaitaiStruct):

    class Constants(IntEnum):
        negative_one = -1
        positive_one = 1
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumNegative, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumNegative.Constants, self._io.read_s1())
        self.f2 = KaitaiStream.resolve_enum(EnumNegative.Constants, self._io.read_s1())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumNegative, self)._write__seq(io)
        self._io.write_s1(int(self.f1))
        self._io.write_s1(int(self.f2))


    def _check(self):
        self._dirty = False



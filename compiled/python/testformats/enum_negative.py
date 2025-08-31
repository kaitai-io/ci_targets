# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumNegative(KaitaiStruct):

    class Constants(IntEnum):
        negative_one = -1
        positive_one = 1
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.f1 = KaitaiStream.resolve_enum(EnumNegative.Constants, self._io.read_s1())
        self.f2 = KaitaiStream.resolve_enum(EnumNegative.Constants, self._io.read_s1())


    def _fetch_instances(self):
        pass



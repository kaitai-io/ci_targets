# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineEnum(KaitaiStruct):

    class Animal(Enum):
        pig = 7
        horse = 12
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.enum_u4 = KaitaiStream.resolve_enum(CombineEnum.Animal, self._io.read_u4le())
        self.enum_u2 = KaitaiStream.resolve_enum(CombineEnum.Animal, self._io.read_u2le())

    @property
    def enum_u4_u2(self):
        if hasattr(self, '_m_enum_u4_u2'):
            return self._m_enum_u4_u2

        self._m_enum_u4_u2 = (self.enum_u4 if False else self.enum_u2)
        return getattr(self, '_m_enum_u4_u2', None)



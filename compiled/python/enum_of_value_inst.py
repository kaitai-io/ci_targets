# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumOfValueInst(KaitaiStruct):

    class Animal(Enum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, self._io.read_u4le())

    @property
    def pet_3(self):
        if hasattr(self, '_m_pet_3'):
            return self._m_pet_3

        self._m_pet_3 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, (4 if self.pet_1 == EnumOfValueInst.Animal.cat else 12))
        return getattr(self, '_m_pet_3', None)

    @property
    def pet_4(self):
        if hasattr(self, '_m_pet_4'):
            return self._m_pet_4

        self._m_pet_4 = (EnumOfValueInst.Animal.dog if self.pet_1 == EnumOfValueInst.Animal.cat else EnumOfValueInst.Animal.chicken)
        return getattr(self, '_m_pet_4', None)



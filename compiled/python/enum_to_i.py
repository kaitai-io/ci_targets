# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumToI(KaitaiStruct):

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
        self.pet_1 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())

    @property
    def pet_1_i(self):
        if hasattr(self, '_m_pet_1_i'):
            return self._m_pet_1_i

        self._m_pet_1_i = self.pet_1.value
        return getattr(self, '_m_pet_1_i', None)

    @property
    def pet_1_eq_int(self):
        if hasattr(self, '_m_pet_1_eq_int'):
            return self._m_pet_1_eq_int

        self._m_pet_1_eq_int = self.pet_1.value == 7
        return getattr(self, '_m_pet_1_eq_int', None)

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two

        self._m_one_lt_two = self.pet_1.value < self.pet_2.value
        return getattr(self, '_m_one_lt_two', None)

    @property
    def pet_1_mod(self):
        if hasattr(self, '_m_pet_1_mod'):
            return self._m_pet_1_mod

        self._m_pet_1_mod = (self.pet_1.value + 32768)
        return getattr(self, '_m_pet_1_mod', None)

    @property
    def pet_2_eq_int(self):
        if hasattr(self, '_m_pet_2_eq_int'):
            return self._m_pet_2_eq_int

        self._m_pet_2_eq_int = self.pet_2.value == 5
        return getattr(self, '_m_pet_2_eq_int', None)



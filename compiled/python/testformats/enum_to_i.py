# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumToI(KaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())


    def _fetch_instances(self):
        pass

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two

        self._m_one_lt_two = int(self.pet_1) < int(self.pet_2)
        return getattr(self, '_m_one_lt_two', None)

    @property
    def pet_1_eq_int(self):
        if hasattr(self, '_m_pet_1_eq_int'):
            return self._m_pet_1_eq_int

        self._m_pet_1_eq_int = int(self.pet_1) == 7
        return getattr(self, '_m_pet_1_eq_int', None)

    @property
    def pet_1_i(self):
        if hasattr(self, '_m_pet_1_i'):
            return self._m_pet_1_i

        self._m_pet_1_i = int(self.pet_1)
        return getattr(self, '_m_pet_1_i', None)

    @property
    def pet_1_i_to_s(self):
        if hasattr(self, '_m_pet_1_i_to_s'):
            return self._m_pet_1_i_to_s

        self._m_pet_1_i_to_s = str(int(self.pet_1))
        return getattr(self, '_m_pet_1_i_to_s', None)

    @property
    def pet_1_mod(self):
        if hasattr(self, '_m_pet_1_mod'):
            return self._m_pet_1_mod

        self._m_pet_1_mod = int(self.pet_1) + 32768
        return getattr(self, '_m_pet_1_mod', None)

    @property
    def pet_2_eq_int(self):
        if hasattr(self, '_m_pet_2_eq_int'):
            return self._m_pet_2_eq_int

        self._m_pet_2_eq_int = int(self.pet_2) == 5
        return getattr(self, '_m_pet_2_eq_int', None)



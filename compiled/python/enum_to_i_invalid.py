# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumToIInvalid(KaitaiStruct):

    class Animal(IntEnum):
        dog = 102
        cat = 124
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumToIInvalid.Animal, self._io.read_u1())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToIInvalid.Animal, self._io.read_u1())

    @property
    def pet_2_eq_int_t(self):
        if hasattr(self, '_m_pet_2_eq_int_t'):
            return self._m_pet_2_eq_int_t

        self._m_pet_2_eq_int_t = int(self.pet_2) == 111
        return getattr(self, '_m_pet_2_eq_int_t', None)

    @property
    def pet_2_eq_int_f(self):
        if hasattr(self, '_m_pet_2_eq_int_f'):
            return self._m_pet_2_eq_int_f

        self._m_pet_2_eq_int_f = int(self.pet_2) == 110
        return getattr(self, '_m_pet_2_eq_int_f', None)

    @property
    def pet_2_i(self):
        if hasattr(self, '_m_pet_2_i'):
            return self._m_pet_2_i

        self._m_pet_2_i = int(self.pet_2)
        return getattr(self, '_m_pet_2_i', None)

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two

        self._m_one_lt_two = int(self.pet_1) < int(self.pet_2)
        return getattr(self, '_m_one_lt_two', None)

    @property
    def pet_2_mod(self):
        if hasattr(self, '_m_pet_2_mod'):
            return self._m_pet_2_mod

        self._m_pet_2_mod = (int(self.pet_2) + 32768)
        return getattr(self, '_m_pet_2_mod', None)

    @property
    def pet_2_i_to_s(self):
        if hasattr(self, '_m_pet_2_i_to_s'):
            return self._m_pet_2_i_to_s

        self._m_pet_2_i_to_s = str(int(self.pet_2))
        return getattr(self, '_m_pet_2_i_to_s', None)



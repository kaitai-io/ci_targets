# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumToIInvalid(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 102
        cat = 124
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumToIInvalid.Animal, self._io.read_u1())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToIInvalid.Animal, self._io.read_u1())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(int(self.pet_1))
        self._io.write_u1(int(self.pet_2))


    def _check(self):
        self._dirty = False

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two

        self._m_one_lt_two = int(self.pet_1) < int(self.pet_2)
        return getattr(self, '_m_one_lt_two', None)

    def _invalidate_one_lt_two(self):
        del self._m_one_lt_two
    @property
    def pet_2_eq_int_f(self):
        if hasattr(self, '_m_pet_2_eq_int_f'):
            return self._m_pet_2_eq_int_f

        self._m_pet_2_eq_int_f = int(self.pet_2) == 110
        return getattr(self, '_m_pet_2_eq_int_f', None)

    def _invalidate_pet_2_eq_int_f(self):
        del self._m_pet_2_eq_int_f
    @property
    def pet_2_eq_int_t(self):
        if hasattr(self, '_m_pet_2_eq_int_t'):
            return self._m_pet_2_eq_int_t

        self._m_pet_2_eq_int_t = int(self.pet_2) == 111
        return getattr(self, '_m_pet_2_eq_int_t', None)

    def _invalidate_pet_2_eq_int_t(self):
        del self._m_pet_2_eq_int_t
    @property
    def pet_2_i(self):
        if hasattr(self, '_m_pet_2_i'):
            return self._m_pet_2_i

        self._m_pet_2_i = int(self.pet_2)
        return getattr(self, '_m_pet_2_i', None)

    def _invalidate_pet_2_i(self):
        del self._m_pet_2_i
    @property
    def pet_2_i_to_s(self):
        if hasattr(self, '_m_pet_2_i_to_s'):
            return self._m_pet_2_i_to_s

        self._m_pet_2_i_to_s = str(int(self.pet_2))
        return getattr(self, '_m_pet_2_i_to_s', None)

    def _invalidate_pet_2_i_to_s(self):
        del self._m_pet_2_i_to_s
    @property
    def pet_2_mod(self):
        if hasattr(self, '_m_pet_2_mod'):
            return self._m_pet_2_mod

        self._m_pet_2_mod = int(self.pet_2) + 32768
        return getattr(self, '_m_pet_2_mod', None)

    def _invalidate_pet_2_mod(self):
        del self._m_pet_2_mod


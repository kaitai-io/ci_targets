# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumToI(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumToI, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToI.Animal, self._io.read_u4le())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumToI, self)._write__seq(io)
        self._io.write_u4le(int(self.pet_1))
        self._io.write_u4le(int(self.pet_2))


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
    def pet_1_eq_int(self):
        if hasattr(self, '_m_pet_1_eq_int'):
            return self._m_pet_1_eq_int

        self._m_pet_1_eq_int = int(self.pet_1) == 7
        return getattr(self, '_m_pet_1_eq_int', None)

    def _invalidate_pet_1_eq_int(self):
        del self._m_pet_1_eq_int
    @property
    def pet_1_i(self):
        if hasattr(self, '_m_pet_1_i'):
            return self._m_pet_1_i

        self._m_pet_1_i = int(self.pet_1)
        return getattr(self, '_m_pet_1_i', None)

    def _invalidate_pet_1_i(self):
        del self._m_pet_1_i
    @property
    def pet_1_i_to_s(self):
        if hasattr(self, '_m_pet_1_i_to_s'):
            return self._m_pet_1_i_to_s

        self._m_pet_1_i_to_s = str(int(self.pet_1))
        return getattr(self, '_m_pet_1_i_to_s', None)

    def _invalidate_pet_1_i_to_s(self):
        del self._m_pet_1_i_to_s
    @property
    def pet_1_mod(self):
        if hasattr(self, '_m_pet_1_mod'):
            return self._m_pet_1_mod

        self._m_pet_1_mod = int(self.pet_1) + 32768
        return getattr(self, '_m_pet_1_mod', None)

    def _invalidate_pet_1_mod(self):
        del self._m_pet_1_mod
    @property
    def pet_2_eq_int(self):
        if hasattr(self, '_m_pet_2_eq_int'):
            return self._m_pet_2_eq_int

        self._m_pet_2_eq_int = int(self.pet_2) == 5
        return getattr(self, '_m_pet_2_eq_int', None)

    def _invalidate_pet_2_eq_int(self):
        del self._m_pet_2_eq_int


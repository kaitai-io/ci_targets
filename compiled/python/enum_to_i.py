# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
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
            return self._m_pet_1_i if hasattr(self, '_m_pet_1_i') else None

        self._m_pet_1_i = self.pet_1.value
        return self._m_pet_1_i if hasattr(self, '_m_pet_1_i') else None

    @property
    def pet_1_eq_int(self):
        if hasattr(self, '_m_pet_1_eq_int'):
            return self._m_pet_1_eq_int if hasattr(self, '_m_pet_1_eq_int') else None

        self._m_pet_1_eq_int = self.pet_1.value == 7
        return self._m_pet_1_eq_int if hasattr(self, '_m_pet_1_eq_int') else None

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two if hasattr(self, '_m_one_lt_two') else None

        self._m_one_lt_two = self.pet_1.value < self.pet_2.value
        return self._m_one_lt_two if hasattr(self, '_m_one_lt_two') else None

    @property
    def pet_1_mod(self):
        if hasattr(self, '_m_pet_1_mod'):
            return self._m_pet_1_mod if hasattr(self, '_m_pet_1_mod') else None

        self._m_pet_1_mod = (self.pet_1.value + 32768)
        return self._m_pet_1_mod if hasattr(self, '_m_pet_1_mod') else None

    @property
    def pet_2_eq_int(self):
        if hasattr(self, '_m_pet_2_eq_int'):
            return self._m_pet_2_eq_int if hasattr(self, '_m_pet_2_eq_int') else None

        self._m_pet_2_eq_int = self.pet_2.value == 5
        return self._m_pet_2_eq_int if hasattr(self, '_m_pet_2_eq_int') else None



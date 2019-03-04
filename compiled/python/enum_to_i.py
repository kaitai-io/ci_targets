# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

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
        self.pet_1 = KaitaiStream.resolve_enum(self._root.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(self._root.Animal, self._io.read_u4le())

    @property
    def pet_1_i(self):
        if hasattr(self, '_m_pet_1_i'):
            return self._m_pet_1_i if hasattr(self, '_m_pet_1_i') else None

        self._m_pet_1_i = self.pet_1.value
        return self._m_pet_1_i if hasattr(self, '_m_pet_1_i') else None

    @property
    def pet_1_mod(self):
        if hasattr(self, '_m_pet_1_mod'):
            return self._m_pet_1_mod if hasattr(self, '_m_pet_1_mod') else None

        self._m_pet_1_mod = (self.pet_1.value + 32768)
        return self._m_pet_1_mod if hasattr(self, '_m_pet_1_mod') else None

    @property
    def one_lt_two(self):
        if hasattr(self, '_m_one_lt_two'):
            return self._m_one_lt_two if hasattr(self, '_m_one_lt_two') else None

        self._m_one_lt_two = self.pet_1.value < self.pet_2.value
        return self._m_one_lt_two if hasattr(self, '_m_one_lt_two') else None



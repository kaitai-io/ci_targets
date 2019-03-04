# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

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
        self.pet_1 = KaitaiStream.resolve_enum(self._root.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(self._root.Animal, self._io.read_u4le())

    @property
    def pet_3(self):
        if hasattr(self, '_m_pet_3'):
            return self._m_pet_3 if hasattr(self, '_m_pet_3') else None

        self._m_pet_3 = KaitaiStream.resolve_enum(self._root.Animal, (4 if self.pet_1 == self._root.Animal.cat else 12))
        return self._m_pet_3 if hasattr(self, '_m_pet_3') else None

    @property
    def pet_4(self):
        if hasattr(self, '_m_pet_4'):
            return self._m_pet_4 if hasattr(self, '_m_pet_4') else None

        self._m_pet_4 = (self._root.Animal.dog if self.pet_1 == self._root.Animal.cat else self._root.Animal.chicken)
        return self._m_pet_4 if hasattr(self, '_m_pet_4') else None



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumDeepLiterals(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(self._root.Container1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(self._root.Container1.Container2.Animal, self._io.read_u4le())

    class Container1(KaitaiStruct):

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
            pass

        class Container2(KaitaiStruct):

            class Animal(Enum):
                canary = 4
                turtle = 7
                hare = 12
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                pass



    @property
    def is_pet_1_ok(self):
        if hasattr(self, '_m_is_pet_1_ok'):
            return self._m_is_pet_1_ok if hasattr(self, '_m_is_pet_1_ok') else None

        self._m_is_pet_1_ok = self.pet_1 == self._root.Container1.Animal.cat
        return self._m_is_pet_1_ok if hasattr(self, '_m_is_pet_1_ok') else None

    @property
    def is_pet_2_ok(self):
        if hasattr(self, '_m_is_pet_2_ok'):
            return self._m_is_pet_2_ok if hasattr(self, '_m_is_pet_2_ok') else None

        self._m_is_pet_2_ok = self.pet_2 == self._root.Container1.Container2.Animal.hare
        return self._m_is_pet_2_ok if hasattr(self, '_m_is_pet_2_ok') else None



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

import enum_to_i_class_border_2
class EnumToIClassBorder1(KaitaiStruct):

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
    def some_dog(self):
        if hasattr(self, '_m_some_dog'):
            return self._m_some_dog if hasattr(self, '_m_some_dog') else None

        self._m_some_dog = KaitaiStream.resolve_enum(self._root.Animal, 4)
        return self._m_some_dog if hasattr(self, '_m_some_dog') else None

    @property
    def checker(self):
        if hasattr(self, '_m_checker'):
            return self._m_checker if hasattr(self, '_m_checker') else None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_checker = enum_to_i_class_border_2.EnumToIClassBorder2(self._root, self._io)
        self._io.seek(_pos)
        return self._m_checker if hasattr(self, '_m_checker') else None



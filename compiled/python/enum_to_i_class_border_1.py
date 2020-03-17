# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

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
        self.pet_1 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())

    @property
    def some_dog(self):
        if hasattr(self, '_m_some_dog'):
            return self._m_some_dog if hasattr(self, '_m_some_dog') else None

        self._m_some_dog = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, 4)
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



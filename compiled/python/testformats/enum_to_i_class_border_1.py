# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import enum_to_i_class_border_2
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumToIClassBorder1(KaitaiStruct):

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
        self.pet_1 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())


    def _fetch_instances(self):
        pass
        _ = self.checker
        if hasattr(self, '_m_checker'):
            pass
            self._m_checker._fetch_instances()


    @property
    def checker(self):
        if hasattr(self, '_m_checker'):
            return self._m_checker

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_checker = enum_to_i_class_border_2.EnumToIClassBorder2(self._root, self._io)
        self._io.seek(_pos)
        return getattr(self, '_m_checker', None)

    @property
    def some_dog(self):
        if hasattr(self, '_m_some_dog'):
            return self._m_some_dog

        self._m_some_dog = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, 4)
        return getattr(self, '_m_some_dog', None)



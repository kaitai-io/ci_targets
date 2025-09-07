# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import enum_to_i_class_border_2
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumToIClassBorder1(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumToIClassBorder1, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_checker = False
        self.checker__enabled = True

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, self._io.read_u4le())
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.checker
        if hasattr(self, '_m_checker'):
            pass
            self._m_checker._fetch_instances()



    def _write__seq(self, io=None):
        super(EnumToIClassBorder1, self)._write__seq(io)
        self._should_write_checker = self.checker__enabled
        self._io.write_u4le(int(self.pet_1))
        self._io.write_u4le(int(self.pet_2))


    def _check(self):
        if self.checker__enabled:
            pass
            if self._m_checker.parent != self._root:
                raise kaitaistruct.ConsistencyError(u"checker", self._root, self._m_checker.parent)

        self._dirty = False

    @property
    def checker(self):
        if self._should_write_checker:
            self._write_checker()
        if hasattr(self, '_m_checker'):
            return self._m_checker

        if not self.checker__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_checker = enum_to_i_class_border_2.EnumToIClassBorder2(self._root, self._io)
        self._m_checker._read()
        self._io.seek(_pos)
        return getattr(self, '_m_checker', None)

    @checker.setter
    def checker(self, v):
        self._dirty = True
        self._m_checker = v

    def _write_checker(self):
        self._should_write_checker = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._m_checker._write__seq(self._io)
        self._io.seek(_pos)

    @property
    def some_dog(self):
        if hasattr(self, '_m_some_dog'):
            return self._m_some_dog

        self._m_some_dog = KaitaiStream.resolve_enum(EnumToIClassBorder1.Animal, 4)
        return getattr(self, '_m_some_dog', None)

    def _invalidate_some_dog(self):
        del self._m_some_dog


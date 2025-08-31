# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprEnum(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
        boom = 102
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_u1()


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprEnum, self)._write__seq(io)
        self._io.write_u1(self.one)


    def _check(self):
        pass

    @property
    def const_dog(self):
        if hasattr(self, '_m_const_dog'):
            return self._m_const_dog

        self._m_const_dog = KaitaiStream.resolve_enum(ExprEnum.Animal, 4)
        return getattr(self, '_m_const_dog', None)

    def _invalidate_const_dog(self):
        del self._m_const_dog
    @property
    def derived_boom(self):
        if hasattr(self, '_m_derived_boom'):
            return self._m_derived_boom

        self._m_derived_boom = KaitaiStream.resolve_enum(ExprEnum.Animal, self.one)
        return getattr(self, '_m_derived_boom', None)

    def _invalidate_derived_boom(self):
        del self._m_derived_boom
    @property
    def derived_dog(self):
        if hasattr(self, '_m_derived_dog'):
            return self._m_derived_dog

        self._m_derived_dog = KaitaiStream.resolve_enum(ExprEnum.Animal, self.one - 98)
        return getattr(self, '_m_derived_dog', None)

    def _invalidate_derived_dog(self):
        del self._m_derived_dog


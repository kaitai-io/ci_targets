from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprEnum(KaitaiStruct):

    class Animal(Enum):
        dog = 4
        cat = 7
        chicken = 12
        boom = 102
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_u1()

    @property
    def const_dog(self):
        if hasattr(self, '_m_const_dog'):
            return self._m_const_dog if hasattr(self, '_m_const_dog') else None

        self._m_const_dog = self._root.Animal(4)
        return self._m_const_dog if hasattr(self, '_m_const_dog') else None

    @property
    def derived_boom(self):
        if hasattr(self, '_m_derived_boom'):
            return self._m_derived_boom if hasattr(self, '_m_derived_boom') else None

        self._m_derived_boom = self._root.Animal(self.one)
        return self._m_derived_boom if hasattr(self, '_m_derived_boom') else None

    @property
    def derived_dog(self):
        if hasattr(self, '_m_derived_dog'):
            return self._m_derived_dog if hasattr(self, '_m_derived_dog') else None

        self._m_derived_dog = self._root.Animal((self.one - 98))
        return self._m_derived_dog if hasattr(self, '_m_derived_dog') else None



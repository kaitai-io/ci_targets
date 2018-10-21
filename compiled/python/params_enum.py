# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ParamsEnum(KaitaiStruct):

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
        self.one = self._root.Animal(self._io.read_u1())
        self.invoke_with_param = self._root.WithParam(self.one, self._io, self, self._root)

    class WithParam(KaitaiStruct):
        def __init__(self, enumerated_one, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.enumerated_one = enumerated_one
            self._read()

        def _read(self):
            pass

        @property
        def is_cat(self):
            if hasattr(self, '_m_is_cat'):
                return self._m_is_cat if hasattr(self, '_m_is_cat') else None

            self._m_is_cat = self.enumerated_one == self._root.Animal.cat
            return self._m_is_cat if hasattr(self, '_m_is_cat') else None




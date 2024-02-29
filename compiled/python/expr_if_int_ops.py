# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIfIntOps(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.skip = self._io.read_bytes(2)
        if True:
            self.it = self._io.read_s2le()

        if True:
            self.boxed = self._io.read_s2le()


    @property
    def is_eq_boxed(self):
        if hasattr(self, '_m_is_eq_boxed'):
            return self._m_is_eq_boxed

        self._m_is_eq_boxed = self.it == self.boxed
        return getattr(self, '_m_is_eq_boxed', None)

    @property
    def is_eq_prim(self):
        if hasattr(self, '_m_is_eq_prim'):
            return self._m_is_eq_prim

        self._m_is_eq_prim = self.it == 16705
        return getattr(self, '_m_is_eq_prim', None)



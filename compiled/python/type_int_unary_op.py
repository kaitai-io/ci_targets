# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeIntUnaryOp(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.value_s2 = self._io.read_s2le()
        self.value_s8 = self._io.read_s8le()

    @property
    def unary_s2(self):
        if hasattr(self, '_m_unary_s2'):
            return self._m_unary_s2 if hasattr(self, '_m_unary_s2') else None

        self._m_unary_s2 = -(self.value_s2)
        return self._m_unary_s2 if hasattr(self, '_m_unary_s2') else None

    @property
    def unary_s8(self):
        if hasattr(self, '_m_unary_s8'):
            return self._m_unary_s8 if hasattr(self, '_m_unary_s8') else None

        self._m_unary_s8 = -(self.value_s8)
        return self._m_unary_s8 if hasattr(self, '_m_unary_s8') else None



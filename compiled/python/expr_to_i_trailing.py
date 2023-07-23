# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprToITrailing(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def to_i_r10(self):
        if hasattr(self, '_m_to_i_r10'):
            return self._m_to_i_r10

        self._m_to_i_r10 = int(u"9173abc")
        return getattr(self, '_m_to_i_r10', None)

    @property
    def to_i_r13(self):
        if hasattr(self, '_m_to_i_r13'):
            return self._m_to_i_r13

        self._m_to_i_r13 = int(u"9173abc", 13)
        return getattr(self, '_m_to_i_r13', None)

    @property
    def to_i_garbage(self):
        if hasattr(self, '_m_to_i_garbage'):
            return self._m_to_i_garbage

        self._m_to_i_garbage = int(u"123_.^")
        return getattr(self, '_m_to_i_garbage', None)



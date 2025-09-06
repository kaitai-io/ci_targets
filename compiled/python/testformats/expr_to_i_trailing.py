# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprToITrailing(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ExprToITrailing, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass

    @property
    def to_i_garbage(self):
        if hasattr(self, '_m_to_i_garbage'):
            return self._m_to_i_garbage

        self._m_to_i_garbage = int(u"123_.^")
        return getattr(self, '_m_to_i_garbage', None)

    @property
    def to_i_r10(self):
        if hasattr(self, '_m_to_i_r10'):
            return self._m_to_i_r10

        self._m_to_i_r10 = int(u"9173abc")
        return getattr(self, '_m_to_i_r10', None)

    @property
    def to_i_r16(self):
        if hasattr(self, '_m_to_i_r16'):
            return self._m_to_i_r16

        self._m_to_i_r16 = int(u"9173abc", 16)
        return getattr(self, '_m_to_i_r16', None)



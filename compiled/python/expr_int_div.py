# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIntDiv(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.int_u = self._io.read_u4le()
        self.int_s = self._io.read_s4le()

    @property
    def div_pos_const(self):
        if hasattr(self, '_m_div_pos_const'):
            return self._m_div_pos_const

        self._m_div_pos_const = 9837 // 13
        return getattr(self, '_m_div_pos_const', None)

    @property
    def div_neg_const(self):
        if hasattr(self, '_m_div_neg_const'):
            return self._m_div_neg_const

        self._m_div_neg_const = -9837 // 13
        return getattr(self, '_m_div_neg_const', None)

    @property
    def div_pos_seq(self):
        if hasattr(self, '_m_div_pos_seq'):
            return self._m_div_pos_seq

        self._m_div_pos_seq = self.int_u // 13
        return getattr(self, '_m_div_pos_seq', None)

    @property
    def div_neg_seq(self):
        if hasattr(self, '_m_div_neg_seq'):
            return self._m_div_neg_seq

        self._m_div_neg_seq = self.int_s // 13
        return getattr(self, '_m_div_neg_seq', None)



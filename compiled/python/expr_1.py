# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr1(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1_mod)).decode(u"ASCII")

    @property
    def len_of_1_mod(self):
        if hasattr(self, '_m_len_of_1_mod'):
            return self._m_len_of_1_mod

        self._m_len_of_1_mod = self.len_of_1 - 2
        return getattr(self, '_m_len_of_1_mod', None)

    @property
    def str1_len(self):
        if hasattr(self, '_m_str1_len'):
            return self._m_str1_len

        self._m_str1_len = len(self.str1)
        return getattr(self, '_m_str1_len', None)



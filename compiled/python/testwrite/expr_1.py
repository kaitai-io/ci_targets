# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr1(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1_mod)).decode(u"ASCII")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(Expr1, self)._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode(u"ASCII"))


    def _check(self):
        pass
        if len((self.str1).encode(u"ASCII")) != self.len_of_1_mod:
            raise kaitaistruct.ConsistencyError(u"str1", len((self.str1).encode(u"ASCII")), self.len_of_1_mod)

    @property
    def len_of_1_mod(self):
        if hasattr(self, '_m_len_of_1_mod'):
            return self._m_len_of_1_mod

        self._m_len_of_1_mod = self.len_of_1 - 2
        return getattr(self, '_m_len_of_1_mod', None)

    def _invalidate_len_of_1_mod(self):
        del self._m_len_of_1_mod
    @property
    def str1_len(self):
        if hasattr(self, '_m_str1_len'):
            return self._m_str1_len

        self._m_str1_len = len(self.str1)
        return getattr(self, '_m_str1_len', None)

    def _invalidate_str1_len(self):
        del self._m_str1_len


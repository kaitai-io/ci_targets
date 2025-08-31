# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len_of_1 = self._io.read_u2le()


    def _fetch_instances(self):
        pass

    @property
    def must_be_abc123(self):
        if hasattr(self, '_m_must_be_abc123'):
            return self._m_must_be_abc123

        self._m_must_be_abc123 = u"abc" + u"123"
        return getattr(self, '_m_must_be_abc123', None)

    @property
    def must_be_f7(self):
        if hasattr(self, '_m_must_be_f7'):
            return self._m_must_be_f7

        self._m_must_be_f7 = 7 + 240
        return getattr(self, '_m_must_be_f7', None)



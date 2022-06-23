# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import struct


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBytesNonLiteral(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_u1()
        self.two = self._io.read_u1()

    @property
    def calc_bytes(self):
        if hasattr(self, '_m_calc_bytes'):
            return self._m_calc_bytes

        self._m_calc_bytes = struct.pack('2b', self.one, self.two)
        return getattr(self, '_m_calc_bytes', None)



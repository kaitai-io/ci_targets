# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import struct


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBytesNonLiteral(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_u1()
        self.two = self._io.read_u1()


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprBytesNonLiteral, self)._write__seq(io)
        self._io.write_u1(self.one)
        self._io.write_u1(self.two)


    def _check(self):
        pass

    @property
    def calc_bytes(self):
        if hasattr(self, '_m_calc_bytes'):
            return self._m_calc_bytes

        self._m_calc_bytes = struct.pack('2B', self.one, self.two)
        return getattr(self, '_m_calc_bytes', None)

    def _invalidate_calc_bytes(self):
        del self._m_calc_bytes


# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeIntUnaryOp(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(TypeIntUnaryOp, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.value_s2 = self._io.read_s2le()
        self.value_s8 = self._io.read_s8le()
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(TypeIntUnaryOp, self)._write__seq(io)
        self._io.write_s2le(self.value_s2)
        self._io.write_s8le(self.value_s8)


    def _check(self):
        self._dirty = False

    @property
    def unary_s2(self):
        if hasattr(self, '_m_unary_s2'):
            return self._m_unary_s2

        self._m_unary_s2 = -(self.value_s2)
        return getattr(self, '_m_unary_s2', None)

    def _invalidate_unary_s2(self):
        del self._m_unary_s2
    @property
    def unary_s8(self):
        if hasattr(self, '_m_unary_s8'):
            return self._m_unary_s8

        self._m_unary_s8 = -(self.value_s8)
        return getattr(self, '_m_unary_s8', None)

    def _invalidate_unary_s8(self):
        del self._m_unary_s8


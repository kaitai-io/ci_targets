# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class FloatingPoints(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(FloatingPoints, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.single_value = self._io.read_f4le()
        self.double_value = self._io.read_f8le()
        self.single_value_be = self._io.read_f4be()
        self.double_value_be = self._io.read_f8be()
        self.approximate_value = self._io.read_f4le()
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(FloatingPoints, self)._write__seq(io)
        self._io.write_f4le(self.single_value)
        self._io.write_f8le(self.double_value)
        self._io.write_f4be(self.single_value_be)
        self._io.write_f8be(self.double_value_be)
        self._io.write_f4le(self.approximate_value)


    def _check(self):
        self._dirty = False

    @property
    def double_value_plus_float(self):
        if hasattr(self, '_m_double_value_plus_float'):
            return self._m_double_value_plus_float

        self._m_double_value_plus_float = self.double_value + 0.05
        return getattr(self, '_m_double_value_plus_float', None)

    def _invalidate_double_value_plus_float(self):
        del self._m_double_value_plus_float
    @property
    def single_value_plus_float(self):
        if hasattr(self, '_m_single_value_plus_float'):
            return self._m_single_value_plus_float

        self._m_single_value_plus_float = self.single_value + 0.5
        return getattr(self, '_m_single_value_plus_float', None)

    def _invalidate_single_value_plus_float(self):
        del self._m_single_value_plus_float
    @property
    def single_value_plus_int(self):
        if hasattr(self, '_m_single_value_plus_int'):
            return self._m_single_value_plus_int

        self._m_single_value_plus_int = self.single_value + 1
        return getattr(self, '_m_single_value_plus_int', None)

    def _invalidate_single_value_plus_int(self):
        del self._m_single_value_plus_int


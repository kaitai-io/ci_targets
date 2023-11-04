# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class FloatingPoints(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.single_value = self._io.read_f4le()
        self.double_value = self._io.read_f8le()
        self.single_value_be = self._io.read_f4be()
        self.double_value_be = self._io.read_f8be()
        self.approximate_value = self._io.read_f4le()

    @property
    def single_value_plus_int(self):
        if hasattr(self, '_m_single_value_plus_int'):
            return self._m_single_value_plus_int

        self._m_single_value_plus_int = (self.single_value + 1)
        return getattr(self, '_m_single_value_plus_int', None)

    @property
    def single_value_plus_float(self):
        if hasattr(self, '_m_single_value_plus_float'):
            return self._m_single_value_plus_float

        self._m_single_value_plus_float = (self.single_value + 0.5)
        return getattr(self, '_m_single_value_plus_float', None)

    @property
    def double_value_plus_float(self):
        if hasattr(self, '_m_double_value_plus_float'):
            return self._m_double_value_plus_float

        self._m_double_value_plus_float = (self.double_value + 0.05)
        return getattr(self, '_m_double_value_plus_float', None)



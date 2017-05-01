from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class FloatingPoints(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.single_value = self._io.read_f4le()
        self.double_value = self._io.read_f8le()
        self.single_value_be = self._io.read_f4be()
        self.double_value_be = self._io.read_f8be()
        self.approximate_value = self._io.read_f4le()

    @property
    def single_value_plus_int(self):
        if hasattr(self, '_m_single_value_plus_int'):
            return self._m_single_value_plus_int if hasattr(self, '_m_single_value_plus_int') else None

        self._m_single_value_plus_int = (self.single_value + 1)
        return self._m_single_value_plus_int if hasattr(self, '_m_single_value_plus_int') else None

    @property
    def single_value_plus_float(self):
        if hasattr(self, '_m_single_value_plus_float'):
            return self._m_single_value_plus_float if hasattr(self, '_m_single_value_plus_float') else None

        self._m_single_value_plus_float = (self.single_value + 0.5)
        return self._m_single_value_plus_float if hasattr(self, '_m_single_value_plus_float') else None

    @property
    def double_value_plus_float(self):
        if hasattr(self, '_m_double_value_plus_float'):
            return self._m_double_value_plus_float if hasattr(self, '_m_double_value_plus_float') else None

        self._m_double_value_plus_float = (self.double_value + 0.05)
        return self._m_double_value_plus_float if hasattr(self, '_m_double_value_plus_float') else None



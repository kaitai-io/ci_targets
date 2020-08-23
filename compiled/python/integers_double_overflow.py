# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class IntegersDoubleOverflow(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.signed_safe_min_be = self._io.read_s8be()
        self.signed_safe_min_le = self._io.read_s8le()
        self.signed_safe_max_be = self._io.read_s8be()
        self.signed_safe_max_le = self._io.read_s8le()
        self.signed_unsafe_neg_be = self._io.read_s8be()
        self.signed_unsafe_neg_le = self._io.read_s8le()
        self.signed_unsafe_pos_be = self._io.read_s8be()
        self.signed_unsafe_pos_le = self._io.read_s8le()

    @property
    def unsigned_safe_max_be(self):
        if hasattr(self, '_m_unsigned_safe_max_be'):
            return self._m_unsigned_safe_max_be if hasattr(self, '_m_unsigned_safe_max_be') else None

        _pos = self._io.pos()
        self._io.seek(16)
        self._m_unsigned_safe_max_be = self._io.read_u8be()
        self._io.seek(_pos)
        return self._m_unsigned_safe_max_be if hasattr(self, '_m_unsigned_safe_max_be') else None

    @property
    def unsigned_safe_max_le(self):
        if hasattr(self, '_m_unsigned_safe_max_le'):
            return self._m_unsigned_safe_max_le if hasattr(self, '_m_unsigned_safe_max_le') else None

        _pos = self._io.pos()
        self._io.seek(24)
        self._m_unsigned_safe_max_le = self._io.read_u8le()
        self._io.seek(_pos)
        return self._m_unsigned_safe_max_le if hasattr(self, '_m_unsigned_safe_max_le') else None

    @property
    def unsigned_unsafe_pos_be(self):
        if hasattr(self, '_m_unsigned_unsafe_pos_be'):
            return self._m_unsigned_unsafe_pos_be if hasattr(self, '_m_unsigned_unsafe_pos_be') else None

        _pos = self._io.pos()
        self._io.seek(48)
        self._m_unsigned_unsafe_pos_be = self._io.read_u8be()
        self._io.seek(_pos)
        return self._m_unsigned_unsafe_pos_be if hasattr(self, '_m_unsigned_unsafe_pos_be') else None

    @property
    def unsigned_unsafe_pos_le(self):
        if hasattr(self, '_m_unsigned_unsafe_pos_le'):
            return self._m_unsigned_unsafe_pos_le if hasattr(self, '_m_unsigned_unsafe_pos_le') else None

        _pos = self._io.pos()
        self._io.seek(56)
        self._m_unsigned_unsafe_pos_le = self._io.read_u8le()
        self._io.seek(_pos)
        return self._m_unsigned_unsafe_pos_le if hasattr(self, '_m_unsigned_unsafe_pos_le') else None



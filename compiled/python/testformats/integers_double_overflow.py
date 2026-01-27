# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IntegersDoubleOverflow(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
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


    def _fetch_instances(self):
        pass
        _ = self.unsigned_safe_max_be
        if hasattr(self, '_m_unsigned_safe_max_be'):
            pass

        _ = self.unsigned_safe_max_le
        if hasattr(self, '_m_unsigned_safe_max_le'):
            pass

        _ = self.unsigned_unsafe_pos_be
        if hasattr(self, '_m_unsigned_unsafe_pos_be'):
            pass

        _ = self.unsigned_unsafe_pos_le
        if hasattr(self, '_m_unsigned_unsafe_pos_le'):
            pass


    @property
    def unsigned_safe_max_be(self):
        if hasattr(self, '_m_unsigned_safe_max_be'):
            return self._m_unsigned_safe_max_be

        _pos = self._io.pos()
        self._io.seek(16)
        self._m_unsigned_safe_max_be = self._io.read_u8be()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_safe_max_be', None)

    @property
    def unsigned_safe_max_le(self):
        if hasattr(self, '_m_unsigned_safe_max_le'):
            return self._m_unsigned_safe_max_le

        _pos = self._io.pos()
        self._io.seek(24)
        self._m_unsigned_safe_max_le = self._io.read_u8le()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_safe_max_le', None)

    @property
    def unsigned_unsafe_pos_be(self):
        if hasattr(self, '_m_unsigned_unsafe_pos_be'):
            return self._m_unsigned_unsafe_pos_be

        _pos = self._io.pos()
        self._io.seek(48)
        self._m_unsigned_unsafe_pos_be = self._io.read_u8be()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_unsafe_pos_be', None)

    @property
    def unsigned_unsafe_pos_le(self):
        if hasattr(self, '_m_unsigned_unsafe_pos_le'):
            return self._m_unsigned_unsafe_pos_le

        _pos = self._io.pos()
        self._io.seek(56)
        self._m_unsigned_unsafe_pos_le = self._io.read_u8le()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_unsafe_pos_le', None)



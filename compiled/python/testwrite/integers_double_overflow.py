# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IntegersDoubleOverflow(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(IntegersDoubleOverflow, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_unsigned_safe_max_be = False
        self.unsigned_safe_max_be__enabled = True
        self._should_write_unsigned_safe_max_le = False
        self.unsigned_safe_max_le__enabled = True
        self._should_write_unsigned_unsafe_pos_be = False
        self.unsigned_unsafe_pos_be__enabled = True
        self._should_write_unsigned_unsafe_pos_le = False
        self.unsigned_unsafe_pos_le__enabled = True

    def _read(self):
        self.signed_safe_min_be = self._io.read_s8be()
        self.signed_safe_min_le = self._io.read_s8le()
        self.signed_safe_max_be = self._io.read_s8be()
        self.signed_safe_max_le = self._io.read_s8le()
        self.signed_unsafe_neg_be = self._io.read_s8be()
        self.signed_unsafe_neg_le = self._io.read_s8le()
        self.signed_unsafe_pos_be = self._io.read_s8be()
        self.signed_unsafe_pos_le = self._io.read_s8le()
        self._dirty = False


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



    def _write__seq(self, io=None):
        super(IntegersDoubleOverflow, self)._write__seq(io)
        self._should_write_unsigned_safe_max_be = self.unsigned_safe_max_be__enabled
        self._should_write_unsigned_safe_max_le = self.unsigned_safe_max_le__enabled
        self._should_write_unsigned_unsafe_pos_be = self.unsigned_unsafe_pos_be__enabled
        self._should_write_unsigned_unsafe_pos_le = self.unsigned_unsafe_pos_le__enabled
        self._io.write_s8be(self.signed_safe_min_be)
        self._io.write_s8le(self.signed_safe_min_le)
        self._io.write_s8be(self.signed_safe_max_be)
        self._io.write_s8le(self.signed_safe_max_le)
        self._io.write_s8be(self.signed_unsafe_neg_be)
        self._io.write_s8le(self.signed_unsafe_neg_le)
        self._io.write_s8be(self.signed_unsafe_pos_be)
        self._io.write_s8le(self.signed_unsafe_pos_le)


    def _check(self):
        if self.unsigned_safe_max_be__enabled:
            pass

        if self.unsigned_safe_max_le__enabled:
            pass

        if self.unsigned_unsafe_pos_be__enabled:
            pass

        if self.unsigned_unsafe_pos_le__enabled:
            pass

        self._dirty = False

    @property
    def unsigned_safe_max_be(self):
        if self._should_write_unsigned_safe_max_be:
            self._write_unsigned_safe_max_be()
        if hasattr(self, '_m_unsigned_safe_max_be'):
            return self._m_unsigned_safe_max_be

        if not self.unsigned_safe_max_be__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(16)
        self._m_unsigned_safe_max_be = self._io.read_u8be()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_safe_max_be', None)

    @unsigned_safe_max_be.setter
    def unsigned_safe_max_be(self, v):
        self._dirty = True
        self._m_unsigned_safe_max_be = v

    def _write_unsigned_safe_max_be(self):
        self._should_write_unsigned_safe_max_be = False
        _pos = self._io.pos()
        self._io.seek(16)
        self._io.write_u8be(self._m_unsigned_safe_max_be)
        self._io.seek(_pos)

    @property
    def unsigned_safe_max_le(self):
        if self._should_write_unsigned_safe_max_le:
            self._write_unsigned_safe_max_le()
        if hasattr(self, '_m_unsigned_safe_max_le'):
            return self._m_unsigned_safe_max_le

        if not self.unsigned_safe_max_le__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(24)
        self._m_unsigned_safe_max_le = self._io.read_u8le()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_safe_max_le', None)

    @unsigned_safe_max_le.setter
    def unsigned_safe_max_le(self, v):
        self._dirty = True
        self._m_unsigned_safe_max_le = v

    def _write_unsigned_safe_max_le(self):
        self._should_write_unsigned_safe_max_le = False
        _pos = self._io.pos()
        self._io.seek(24)
        self._io.write_u8le(self._m_unsigned_safe_max_le)
        self._io.seek(_pos)

    @property
    def unsigned_unsafe_pos_be(self):
        if self._should_write_unsigned_unsafe_pos_be:
            self._write_unsigned_unsafe_pos_be()
        if hasattr(self, '_m_unsigned_unsafe_pos_be'):
            return self._m_unsigned_unsafe_pos_be

        if not self.unsigned_unsafe_pos_be__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(48)
        self._m_unsigned_unsafe_pos_be = self._io.read_u8be()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_unsafe_pos_be', None)

    @unsigned_unsafe_pos_be.setter
    def unsigned_unsafe_pos_be(self, v):
        self._dirty = True
        self._m_unsigned_unsafe_pos_be = v

    def _write_unsigned_unsafe_pos_be(self):
        self._should_write_unsigned_unsafe_pos_be = False
        _pos = self._io.pos()
        self._io.seek(48)
        self._io.write_u8be(self._m_unsigned_unsafe_pos_be)
        self._io.seek(_pos)

    @property
    def unsigned_unsafe_pos_le(self):
        if self._should_write_unsigned_unsafe_pos_le:
            self._write_unsigned_unsafe_pos_le()
        if hasattr(self, '_m_unsigned_unsafe_pos_le'):
            return self._m_unsigned_unsafe_pos_le

        if not self.unsigned_unsafe_pos_le__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(56)
        self._m_unsigned_unsafe_pos_le = self._io.read_u8le()
        self._io.seek(_pos)
        return getattr(self, '_m_unsigned_unsafe_pos_le', None)

    @unsigned_unsafe_pos_le.setter
    def unsigned_unsafe_pos_le(self, v):
        self._dirty = True
        self._m_unsigned_unsafe_pos_le = v

    def _write_unsigned_unsafe_pos_le(self):
        self._should_write_unsigned_unsafe_pos_le = False
        _pos = self._io.pos()
        self._io.seek(56)
        self._io.write_u8le(self._m_unsigned_unsafe_pos_le)
        self._io.seek(_pos)



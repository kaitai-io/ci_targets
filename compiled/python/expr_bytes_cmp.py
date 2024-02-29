# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBytesCmp(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_bytes(1)
        self.two = self._io.read_bytes(3)

    @property
    def is_eq(self):
        if hasattr(self, '_m_is_eq'):
            return self._m_is_eq

        self._m_is_eq = self.two == self.ack
        return getattr(self, '_m_is_eq', None)

    @property
    def is_ne(self):
        if hasattr(self, '_m_is_ne'):
            return self._m_is_ne

        self._m_is_ne = self.two != self.ack
        return getattr(self, '_m_is_ne', None)

    @property
    def is_gt2(self):
        if hasattr(self, '_m_is_gt2'):
            return self._m_is_gt2

        self._m_is_gt2 = self.hi_val > self.two
        return getattr(self, '_m_is_gt2', None)

    @property
    def is_le(self):
        if hasattr(self, '_m_is_le'):
            return self._m_is_le

        self._m_is_le = self.two <= self.ack2
        return getattr(self, '_m_is_le', None)

    @property
    def ack(self):
        if hasattr(self, '_m_ack'):
            return self._m_ack

        self._m_ack = b"\x41\x43\x4B"
        return getattr(self, '_m_ack', None)

    @property
    def hi_val(self):
        if hasattr(self, '_m_hi_val'):
            return self._m_hi_val

        self._m_hi_val = b"\x90\x43"
        return getattr(self, '_m_hi_val', None)

    @property
    def is_gt(self):
        if hasattr(self, '_m_is_gt'):
            return self._m_is_gt

        self._m_is_gt = self.two > self.ack2
        return getattr(self, '_m_is_gt', None)

    @property
    def ack2(self):
        if hasattr(self, '_m_ack2'):
            return self._m_ack2

        self._m_ack2 = b"\x41\x43\x4B\x32"
        return getattr(self, '_m_ack2', None)

    @property
    def is_lt2(self):
        if hasattr(self, '_m_is_lt2'):
            return self._m_is_lt2

        self._m_is_lt2 = self.one < self.two
        return getattr(self, '_m_is_lt2', None)

    @property
    def is_lt(self):
        if hasattr(self, '_m_is_lt'):
            return self._m_is_lt

        self._m_is_lt = self.two < self.ack2
        return getattr(self, '_m_is_lt', None)

    @property
    def is_ge(self):
        if hasattr(self, '_m_is_ge'):
            return self._m_is_ge

        self._m_is_ge = self.two >= self.ack2
        return getattr(self, '_m_is_ge', None)



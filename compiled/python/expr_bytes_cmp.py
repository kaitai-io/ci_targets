from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
import struct
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprBytesCmp(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.one = self._io.read_bytes(1)
        self.two = self._io.read_bytes(3)

    @property
    def is_le(self):
        if hasattr(self, '_m_is_le'):
            return self._m_is_le if hasattr(self, '_m_is_le') else None

        self._m_is_le = self.two <= self.ack2
        return self._m_is_le if hasattr(self, '_m_is_le') else None

    @property
    def ack(self):
        if hasattr(self, '_m_ack'):
            return self._m_ack if hasattr(self, '_m_ack') else None

        self._m_ack = struct.pack('3b', 65, 67, 75)
        return self._m_ack if hasattr(self, '_m_ack') else None

    @property
    def is_gt2(self):
        if hasattr(self, '_m_is_gt2'):
            return self._m_is_gt2 if hasattr(self, '_m_is_gt2') else None

        self._m_is_gt2 = self.hi_val > self.two
        return self._m_is_gt2 if hasattr(self, '_m_is_gt2') else None

    @property
    def is_gt(self):
        if hasattr(self, '_m_is_gt'):
            return self._m_is_gt if hasattr(self, '_m_is_gt') else None

        self._m_is_gt = self.two > self.ack2
        return self._m_is_gt if hasattr(self, '_m_is_gt') else None

    @property
    def ack2(self):
        if hasattr(self, '_m_ack2'):
            return self._m_ack2 if hasattr(self, '_m_ack2') else None

        self._m_ack2 = struct.pack('4b', 65, 67, 75, 50)
        return self._m_ack2 if hasattr(self, '_m_ack2') else None

    @property
    def is_eq(self):
        if hasattr(self, '_m_is_eq'):
            return self._m_is_eq if hasattr(self, '_m_is_eq') else None

        self._m_is_eq = self.two == self.ack
        return self._m_is_eq if hasattr(self, '_m_is_eq') else None

    @property
    def is_lt2(self):
        if hasattr(self, '_m_is_lt2'):
            return self._m_is_lt2 if hasattr(self, '_m_is_lt2') else None

        self._m_is_lt2 = self.one < self.two
        return self._m_is_lt2 if hasattr(self, '_m_is_lt2') else None

    @property
    def is_ge(self):
        if hasattr(self, '_m_is_ge'):
            return self._m_is_ge if hasattr(self, '_m_is_ge') else None

        self._m_is_ge = self.two >= self.ack2
        return self._m_is_ge if hasattr(self, '_m_is_ge') else None

    @property
    def hi_val(self):
        if hasattr(self, '_m_hi_val'):
            return self._m_hi_val if hasattr(self, '_m_hi_val') else None

        self._m_hi_val = struct.pack('2b', -112, 67)
        return self._m_hi_val if hasattr(self, '_m_hi_val') else None

    @property
    def is_ne(self):
        if hasattr(self, '_m_is_ne'):
            return self._m_is_ne if hasattr(self, '_m_is_ne') else None

        self._m_is_ne = self.two != self.ack
        return self._m_is_ne if hasattr(self, '_m_is_ne') else None

    @property
    def is_lt(self):
        if hasattr(self, '_m_is_lt'):
            return self._m_is_lt if hasattr(self, '_m_is_lt') else None

        self._m_is_lt = self.two < self.ack2
        return self._m_is_lt if hasattr(self, '_m_is_lt') else None



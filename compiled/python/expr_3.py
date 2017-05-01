from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Expr3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.one = self._io.read_u1()
        self.two = (self._io.read_bytes(3)).decode(u"ASCII")

    @property
    def three(self):
        if hasattr(self, '_m_three'):
            return self._m_three if hasattr(self, '_m_three') else None

        self._m_three = u"@" + self.two
        return self._m_three if hasattr(self, '_m_three') else None

    @property
    def is_str_ge(self):
        if hasattr(self, '_m_is_str_ge'):
            return self._m_is_str_ge if hasattr(self, '_m_is_str_ge') else None

        self._m_is_str_ge = self.two >= u"ACK2"
        return self._m_is_str_ge if hasattr(self, '_m_is_str_ge') else None

    @property
    def is_str_ne(self):
        if hasattr(self, '_m_is_str_ne'):
            return self._m_is_str_ne if hasattr(self, '_m_is_str_ne') else None

        self._m_is_str_ne = self.two != u"ACK"
        return self._m_is_str_ne if hasattr(self, '_m_is_str_ne') else None

    @property
    def is_str_gt(self):
        if hasattr(self, '_m_is_str_gt'):
            return self._m_is_str_gt if hasattr(self, '_m_is_str_gt') else None

        self._m_is_str_gt = self.two > u"ACK2"
        return self._m_is_str_gt if hasattr(self, '_m_is_str_gt') else None

    @property
    def is_str_le(self):
        if hasattr(self, '_m_is_str_le'):
            return self._m_is_str_le if hasattr(self, '_m_is_str_le') else None

        self._m_is_str_le = self.two <= u"ACK2"
        return self._m_is_str_le if hasattr(self, '_m_is_str_le') else None

    @property
    def is_str_lt2(self):
        if hasattr(self, '_m_is_str_lt2'):
            return self._m_is_str_lt2 if hasattr(self, '_m_is_str_lt2') else None

        self._m_is_str_lt2 = self.three < self.two
        return self._m_is_str_lt2 if hasattr(self, '_m_is_str_lt2') else None

    @property
    def test_not(self):
        if hasattr(self, '_m_test_not'):
            return self._m_test_not if hasattr(self, '_m_test_not') else None

        self._m_test_not = not False
        return self._m_test_not if hasattr(self, '_m_test_not') else None

    @property
    def is_str_lt(self):
        if hasattr(self, '_m_is_str_lt'):
            return self._m_is_str_lt if hasattr(self, '_m_is_str_lt') else None

        self._m_is_str_lt = self.two < u"ACK2"
        return self._m_is_str_lt if hasattr(self, '_m_is_str_lt') else None

    @property
    def four(self):
        if hasattr(self, '_m_four'):
            return self._m_four if hasattr(self, '_m_four') else None

        self._m_four = u"_" + self.two + u"_"
        return self._m_four if hasattr(self, '_m_four') else None

    @property
    def is_str_eq(self):
        if hasattr(self, '_m_is_str_eq'):
            return self._m_is_str_eq if hasattr(self, '_m_is_str_eq') else None

        self._m_is_str_eq = self.two == u"ACK"
        return self._m_is_str_eq if hasattr(self, '_m_is_str_eq') else None



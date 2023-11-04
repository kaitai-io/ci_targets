# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_u1()
        self.two = (self._io.read_bytes(3)).decode("ASCII")

    @property
    def three(self):
        if hasattr(self, '_m_three'):
            return self._m_three

        self._m_three = u"@" + self.two
        return getattr(self, '_m_three', None)

    @property
    def is_str_ge(self):
        if hasattr(self, '_m_is_str_ge'):
            return self._m_is_str_ge

        self._m_is_str_ge = self.two >= u"ACK2"
        return getattr(self, '_m_is_str_ge', None)

    @property
    def is_str_ne(self):
        if hasattr(self, '_m_is_str_ne'):
            return self._m_is_str_ne

        self._m_is_str_ne = self.two != u"ACK"
        return getattr(self, '_m_is_str_ne', None)

    @property
    def is_str_gt(self):
        if hasattr(self, '_m_is_str_gt'):
            return self._m_is_str_gt

        self._m_is_str_gt = self.two > u"ACK2"
        return getattr(self, '_m_is_str_gt', None)

    @property
    def is_str_le(self):
        if hasattr(self, '_m_is_str_le'):
            return self._m_is_str_le

        self._m_is_str_le = self.two <= u"ACK2"
        return getattr(self, '_m_is_str_le', None)

    @property
    def is_str_lt2(self):
        if hasattr(self, '_m_is_str_lt2'):
            return self._m_is_str_lt2

        self._m_is_str_lt2 = self.three < self.two
        return getattr(self, '_m_is_str_lt2', None)

    @property
    def test_not(self):
        if hasattr(self, '_m_test_not'):
            return self._m_test_not

        self._m_test_not = not (False)
        return getattr(self, '_m_test_not', None)

    @property
    def is_str_lt(self):
        if hasattr(self, '_m_is_str_lt'):
            return self._m_is_str_lt

        self._m_is_str_lt = self.two < u"ACK2"
        return getattr(self, '_m_is_str_lt', None)

    @property
    def four(self):
        if hasattr(self, '_m_four'):
            return self._m_four

        self._m_four = u"_" + self.two + u"_"
        return getattr(self, '_m_four', None)

    @property
    def is_str_eq(self):
        if hasattr(self, '_m_is_str_eq'):
            return self._m_is_str_eq

        self._m_is_str_eq = self.two == u"ACK"
        return getattr(self, '_m_is_str_eq', None)



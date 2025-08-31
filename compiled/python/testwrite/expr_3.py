# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr3(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_u1()
        self.two = (self._io.read_bytes(3)).decode(u"ASCII")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(Expr3, self)._write__seq(io)
        self._io.write_u1(self.one)
        self._io.write_bytes((self.two).encode(u"ASCII"))


    def _check(self):
        pass
        if len((self.two).encode(u"ASCII")) != 3:
            raise kaitaistruct.ConsistencyError(u"two", len((self.two).encode(u"ASCII")), 3)

    @property
    def four(self):
        if hasattr(self, '_m_four'):
            return self._m_four

        self._m_four = (u"_" + self.two) + u"_"
        return getattr(self, '_m_four', None)

    def _invalidate_four(self):
        del self._m_four
    @property
    def is_str_eq(self):
        if hasattr(self, '_m_is_str_eq'):
            return self._m_is_str_eq

        self._m_is_str_eq = self.two == u"ACK"
        return getattr(self, '_m_is_str_eq', None)

    def _invalidate_is_str_eq(self):
        del self._m_is_str_eq
    @property
    def is_str_ge(self):
        if hasattr(self, '_m_is_str_ge'):
            return self._m_is_str_ge

        self._m_is_str_ge = self.two >= u"ACK2"
        return getattr(self, '_m_is_str_ge', None)

    def _invalidate_is_str_ge(self):
        del self._m_is_str_ge
    @property
    def is_str_gt(self):
        if hasattr(self, '_m_is_str_gt'):
            return self._m_is_str_gt

        self._m_is_str_gt = self.two > u"ACK2"
        return getattr(self, '_m_is_str_gt', None)

    def _invalidate_is_str_gt(self):
        del self._m_is_str_gt
    @property
    def is_str_le(self):
        if hasattr(self, '_m_is_str_le'):
            return self._m_is_str_le

        self._m_is_str_le = self.two <= u"ACK2"
        return getattr(self, '_m_is_str_le', None)

    def _invalidate_is_str_le(self):
        del self._m_is_str_le
    @property
    def is_str_lt(self):
        if hasattr(self, '_m_is_str_lt'):
            return self._m_is_str_lt

        self._m_is_str_lt = self.two < u"ACK2"
        return getattr(self, '_m_is_str_lt', None)

    def _invalidate_is_str_lt(self):
        del self._m_is_str_lt
    @property
    def is_str_lt2(self):
        if hasattr(self, '_m_is_str_lt2'):
            return self._m_is_str_lt2

        self._m_is_str_lt2 = self.three < self.two
        return getattr(self, '_m_is_str_lt2', None)

    def _invalidate_is_str_lt2(self):
        del self._m_is_str_lt2
    @property
    def is_str_ne(self):
        if hasattr(self, '_m_is_str_ne'):
            return self._m_is_str_ne

        self._m_is_str_ne = self.two != u"ACK"
        return getattr(self, '_m_is_str_ne', None)

    def _invalidate_is_str_ne(self):
        del self._m_is_str_ne
    @property
    def test_not(self):
        if hasattr(self, '_m_test_not'):
            return self._m_test_not

        self._m_test_not = (not (False))
        return getattr(self, '_m_test_not', None)

    def _invalidate_test_not(self):
        del self._m_test_not
    @property
    def three(self):
        if hasattr(self, '_m_three'):
            return self._m_three

        self._m_three = u"@" + self.two
        return getattr(self, '_m_three', None)

    def _invalidate_three(self):
        del self._m_three


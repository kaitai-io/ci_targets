# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprStrOps(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprStrOps, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = (self._io.read_bytes(5)).decode(u"ASCII")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprStrOps, self)._write__seq(io)
        self._io.write_bytes((self.one).encode(u"ASCII"))


    def _check(self):
        if len((self.one).encode(u"ASCII")) != 5:
            raise kaitaistruct.ConsistencyError(u"one", 5, len((self.one).encode(u"ASCII")))
        self._dirty = False

    @property
    def one_len(self):
        if hasattr(self, '_m_one_len'):
            return self._m_one_len

        self._m_one_len = len(self.one)
        return getattr(self, '_m_one_len', None)

    def _invalidate_one_len(self):
        del self._m_one_len
    @property
    def one_rev(self):
        if hasattr(self, '_m_one_rev'):
            return self._m_one_rev

        self._m_one_rev = (self.one)[::-1]
        return getattr(self, '_m_one_rev', None)

    def _invalidate_one_rev(self):
        del self._m_one_rev
    @property
    def one_substr_0_to_0(self):
        if hasattr(self, '_m_one_substr_0_to_0'):
            return self._m_one_substr_0_to_0

        self._m_one_substr_0_to_0 = self.one[0:0]
        return getattr(self, '_m_one_substr_0_to_0', None)

    def _invalidate_one_substr_0_to_0(self):
        del self._m_one_substr_0_to_0
    @property
    def one_substr_0_to_3(self):
        if hasattr(self, '_m_one_substr_0_to_3'):
            return self._m_one_substr_0_to_3

        self._m_one_substr_0_to_3 = self.one[0:3]
        return getattr(self, '_m_one_substr_0_to_3', None)

    def _invalidate_one_substr_0_to_3(self):
        del self._m_one_substr_0_to_3
    @property
    def one_substr_2_to_5(self):
        if hasattr(self, '_m_one_substr_2_to_5'):
            return self._m_one_substr_2_to_5

        self._m_one_substr_2_to_5 = self.one[2:5]
        return getattr(self, '_m_one_substr_2_to_5', None)

    def _invalidate_one_substr_2_to_5(self):
        del self._m_one_substr_2_to_5
    @property
    def one_substr_3_to_3(self):
        if hasattr(self, '_m_one_substr_3_to_3'):
            return self._m_one_substr_3_to_3

        self._m_one_substr_3_to_3 = self.one[3:3]
        return getattr(self, '_m_one_substr_3_to_3', None)

    def _invalidate_one_substr_3_to_3(self):
        del self._m_one_substr_3_to_3
    @property
    def to_i_attr(self):
        if hasattr(self, '_m_to_i_attr'):
            return self._m_to_i_attr

        self._m_to_i_attr = int(u"9173")
        return getattr(self, '_m_to_i_attr', None)

    def _invalidate_to_i_attr(self):
        del self._m_to_i_attr
    @property
    def to_i_r10(self):
        if hasattr(self, '_m_to_i_r10'):
            return self._m_to_i_r10

        self._m_to_i_r10 = int(u"-072")
        return getattr(self, '_m_to_i_r10', None)

    def _invalidate_to_i_r10(self):
        del self._m_to_i_r10
    @property
    def to_i_r16(self):
        if hasattr(self, '_m_to_i_r16'):
            return self._m_to_i_r16

        self._m_to_i_r16 = int(u"47cf", 16)
        return getattr(self, '_m_to_i_r16', None)

    def _invalidate_to_i_r16(self):
        del self._m_to_i_r16
    @property
    def to_i_r2(self):
        if hasattr(self, '_m_to_i_r2'):
            return self._m_to_i_r2

        self._m_to_i_r2 = int(u"1010110", 2)
        return getattr(self, '_m_to_i_r2', None)

    def _invalidate_to_i_r2(self):
        del self._m_to_i_r2
    @property
    def to_i_r8(self):
        if hasattr(self, '_m_to_i_r8'):
            return self._m_to_i_r8

        self._m_to_i_r8 = int(u"721", 8)
        return getattr(self, '_m_to_i_r8', None)

    def _invalidate_to_i_r8(self):
        del self._m_to_i_r8
    @property
    def two(self):
        if hasattr(self, '_m_two'):
            return self._m_two

        self._m_two = u"0123456789"
        return getattr(self, '_m_two', None)

    def _invalidate_two(self):
        del self._m_two
    @property
    def two_len(self):
        if hasattr(self, '_m_two_len'):
            return self._m_two_len

        self._m_two_len = len(self.two)
        return getattr(self, '_m_two_len', None)

    def _invalidate_two_len(self):
        del self._m_two_len
    @property
    def two_rev(self):
        if hasattr(self, '_m_two_rev'):
            return self._m_two_rev

        self._m_two_rev = (self.two)[::-1]
        return getattr(self, '_m_two_rev', None)

    def _invalidate_two_rev(self):
        del self._m_two_rev
    @property
    def two_substr_0_to_10(self):
        if hasattr(self, '_m_two_substr_0_to_10'):
            return self._m_two_substr_0_to_10

        self._m_two_substr_0_to_10 = self.two[0:10]
        return getattr(self, '_m_two_substr_0_to_10', None)

    def _invalidate_two_substr_0_to_10(self):
        del self._m_two_substr_0_to_10
    @property
    def two_substr_0_to_7(self):
        if hasattr(self, '_m_two_substr_0_to_7'):
            return self._m_two_substr_0_to_7

        self._m_two_substr_0_to_7 = self.two[0:7]
        return getattr(self, '_m_two_substr_0_to_7', None)

    def _invalidate_two_substr_0_to_7(self):
        del self._m_two_substr_0_to_7
    @property
    def two_substr_4_to_10(self):
        if hasattr(self, '_m_two_substr_4_to_10'):
            return self._m_two_substr_4_to_10

        self._m_two_substr_4_to_10 = self.two[4:10]
        return getattr(self, '_m_two_substr_4_to_10', None)

    def _invalidate_two_substr_4_to_10(self):
        del self._m_two_substr_4_to_10


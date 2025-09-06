# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBytesOps(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprBytesOps, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_bytes(3)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprBytesOps, self)._write__seq(io)
        self._io.write_bytes(self.one)


    def _check(self):
        if len(self.one) != 3:
            raise kaitaistruct.ConsistencyError(u"one", len(self.one), 3)
        self._dirty = False

    @property
    def one_first(self):
        if hasattr(self, '_m_one_first'):
            return self._m_one_first

        self._m_one_first = KaitaiStream.byte_array_index(self.one, 0)
        return getattr(self, '_m_one_first', None)

    def _invalidate_one_first(self):
        del self._m_one_first
    @property
    def one_last(self):
        if hasattr(self, '_m_one_last'):
            return self._m_one_last

        self._m_one_last = KaitaiStream.byte_array_index(self.one, -1)
        return getattr(self, '_m_one_last', None)

    def _invalidate_one_last(self):
        del self._m_one_last
    @property
    def one_max(self):
        if hasattr(self, '_m_one_max'):
            return self._m_one_max

        self._m_one_max = KaitaiStream.byte_array_max(self.one)
        return getattr(self, '_m_one_max', None)

    def _invalidate_one_max(self):
        del self._m_one_max
    @property
    def one_mid(self):
        if hasattr(self, '_m_one_mid'):
            return self._m_one_mid

        self._m_one_mid = KaitaiStream.byte_array_index(self.one, 1)
        return getattr(self, '_m_one_mid', None)

    def _invalidate_one_mid(self):
        del self._m_one_mid
    @property
    def one_min(self):
        if hasattr(self, '_m_one_min'):
            return self._m_one_min

        self._m_one_min = KaitaiStream.byte_array_min(self.one)
        return getattr(self, '_m_one_min', None)

    def _invalidate_one_min(self):
        del self._m_one_min
    @property
    def one_size(self):
        if hasattr(self, '_m_one_size'):
            return self._m_one_size

        self._m_one_size = len(self.one)
        return getattr(self, '_m_one_size', None)

    def _invalidate_one_size(self):
        del self._m_one_size
    @property
    def two(self):
        if hasattr(self, '_m_two'):
            return self._m_two

        self._m_two = b"\x41\xFF\x4B"
        return getattr(self, '_m_two', None)

    def _invalidate_two(self):
        del self._m_two
    @property
    def two_first(self):
        if hasattr(self, '_m_two_first'):
            return self._m_two_first

        self._m_two_first = KaitaiStream.byte_array_index(self.two, 0)
        return getattr(self, '_m_two_first', None)

    def _invalidate_two_first(self):
        del self._m_two_first
    @property
    def two_last(self):
        if hasattr(self, '_m_two_last'):
            return self._m_two_last

        self._m_two_last = KaitaiStream.byte_array_index(self.two, -1)
        return getattr(self, '_m_two_last', None)

    def _invalidate_two_last(self):
        del self._m_two_last
    @property
    def two_max(self):
        if hasattr(self, '_m_two_max'):
            return self._m_two_max

        self._m_two_max = KaitaiStream.byte_array_max(self.two)
        return getattr(self, '_m_two_max', None)

    def _invalidate_two_max(self):
        del self._m_two_max
    @property
    def two_mid(self):
        if hasattr(self, '_m_two_mid'):
            return self._m_two_mid

        self._m_two_mid = KaitaiStream.byte_array_index(self.two, 1)
        return getattr(self, '_m_two_mid', None)

    def _invalidate_two_mid(self):
        del self._m_two_mid
    @property
    def two_min(self):
        if hasattr(self, '_m_two_min'):
            return self._m_two_min

        self._m_two_min = KaitaiStream.byte_array_min(self.two)
        return getattr(self, '_m_two_min', None)

    def _invalidate_two_min(self):
        del self._m_two_min
    @property
    def two_size(self):
        if hasattr(self, '_m_two_size'):
            return self._m_two_size

        self._m_two_size = len(self.two)
        return getattr(self, '_m_two_size', None)

    def _invalidate_two_size(self):
        del self._m_two_size


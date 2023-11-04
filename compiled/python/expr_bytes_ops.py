# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBytesOps(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_bytes(3)

    @property
    def two_last(self):
        if hasattr(self, '_m_two_last'):
            return self._m_two_last

        self._m_two_last = KaitaiStream.byte_array_index(self.two, -1)
        return getattr(self, '_m_two_last', None)

    @property
    def two_max(self):
        if hasattr(self, '_m_two_max'):
            return self._m_two_max

        self._m_two_max = KaitaiStream.byte_array_max(self.two)
        return getattr(self, '_m_two_max', None)

    @property
    def one_min(self):
        if hasattr(self, '_m_one_min'):
            return self._m_one_min

        self._m_one_min = KaitaiStream.byte_array_min(self.one)
        return getattr(self, '_m_one_min', None)

    @property
    def one_first(self):
        if hasattr(self, '_m_one_first'):
            return self._m_one_first

        self._m_one_first = KaitaiStream.byte_array_index(self.one, 0)
        return getattr(self, '_m_one_first', None)

    @property
    def one_mid(self):
        if hasattr(self, '_m_one_mid'):
            return self._m_one_mid

        self._m_one_mid = KaitaiStream.byte_array_index(self.one, 1)
        return getattr(self, '_m_one_mid', None)

    @property
    def two(self):
        if hasattr(self, '_m_two'):
            return self._m_two

        self._m_two = b"\x41\xFF\x4B"
        return getattr(self, '_m_two', None)

    @property
    def two_min(self):
        if hasattr(self, '_m_two_min'):
            return self._m_two_min

        self._m_two_min = KaitaiStream.byte_array_min(self.two)
        return getattr(self, '_m_two_min', None)

    @property
    def two_mid(self):
        if hasattr(self, '_m_two_mid'):
            return self._m_two_mid

        self._m_two_mid = KaitaiStream.byte_array_index(self.two, 1)
        return getattr(self, '_m_two_mid', None)

    @property
    def one_size(self):
        if hasattr(self, '_m_one_size'):
            return self._m_one_size

        self._m_one_size = len(self.one)
        return getattr(self, '_m_one_size', None)

    @property
    def one_last(self):
        if hasattr(self, '_m_one_last'):
            return self._m_one_last

        self._m_one_last = KaitaiStream.byte_array_index(self.one, -1)
        return getattr(self, '_m_one_last', None)

    @property
    def two_size(self):
        if hasattr(self, '_m_two_size'):
            return self._m_two_size

        self._m_two_size = len(self.two)
        return getattr(self, '_m_two_size', None)

    @property
    def one_max(self):
        if hasattr(self, '_m_one_max'):
            return self._m_one_max

        self._m_one_max = KaitaiStream.byte_array_max(self.one)
        return getattr(self, '_m_one_max', None)

    @property
    def two_first(self):
        if hasattr(self, '_m_two_first'):
            return self._m_two_first

        self._m_two_first = KaitaiStream.byte_array_index(self.two, 0)
        return getattr(self, '_m_two_first', None)



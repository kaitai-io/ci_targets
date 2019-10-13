# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

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
            return self._m_two_last if hasattr(self, '_m_two_last') else None

        self._m_two_last = self.two[-1]
        return self._m_two_last if hasattr(self, '_m_two_last') else None

    @property
    def two_max(self):
        if hasattr(self, '_m_two_max'):
            return self._m_two_max if hasattr(self, '_m_two_max') else None

        self._m_two_max = max(self.two)
        return self._m_two_max if hasattr(self, '_m_two_max') else None

    @property
    def one_min(self):
        if hasattr(self, '_m_one_min'):
            return self._m_one_min if hasattr(self, '_m_one_min') else None

        self._m_one_min = min(self.one)
        return self._m_one_min if hasattr(self, '_m_one_min') else None

    @property
    def one_first(self):
        if hasattr(self, '_m_one_first'):
            return self._m_one_first if hasattr(self, '_m_one_first') else None

        self._m_one_first = self.one[0]
        return self._m_one_first if hasattr(self, '_m_one_first') else None

    @property
    def one_mid(self):
        if hasattr(self, '_m_one_mid'):
            return self._m_one_mid if hasattr(self, '_m_one_mid') else None

        self._m_one_mid = self.one[1]
        return self._m_one_mid if hasattr(self, '_m_one_mid') else None

    @property
    def two(self):
        if hasattr(self, '_m_two'):
            return self._m_two if hasattr(self, '_m_two') else None

        self._m_two = b"\x41\x43\x4B"
        return self._m_two if hasattr(self, '_m_two') else None

    @property
    def two_min(self):
        if hasattr(self, '_m_two_min'):
            return self._m_two_min if hasattr(self, '_m_two_min') else None

        self._m_two_min = min(self.two)
        return self._m_two_min if hasattr(self, '_m_two_min') else None

    @property
    def two_mid(self):
        if hasattr(self, '_m_two_mid'):
            return self._m_two_mid if hasattr(self, '_m_two_mid') else None

        self._m_two_mid = self.two[1]
        return self._m_two_mid if hasattr(self, '_m_two_mid') else None

    @property
    def one_size(self):
        if hasattr(self, '_m_one_size'):
            return self._m_one_size if hasattr(self, '_m_one_size') else None

        self._m_one_size = len(self.one)
        return self._m_one_size if hasattr(self, '_m_one_size') else None

    @property
    def one_last(self):
        if hasattr(self, '_m_one_last'):
            return self._m_one_last if hasattr(self, '_m_one_last') else None

        self._m_one_last = self.one[-1]
        return self._m_one_last if hasattr(self, '_m_one_last') else None

    @property
    def two_size(self):
        if hasattr(self, '_m_two_size'):
            return self._m_two_size if hasattr(self, '_m_two_size') else None

        self._m_two_size = len(self.two)
        return self._m_two_size if hasattr(self, '_m_two_size') else None

    @property
    def one_max(self):
        if hasattr(self, '_m_one_max'):
            return self._m_one_max if hasattr(self, '_m_one_max') else None

        self._m_one_max = max(self.one)
        return self._m_one_max if hasattr(self, '_m_one_max') else None

    @property
    def two_first(self):
        if hasattr(self, '_m_two_first'):
            return self._m_two_first if hasattr(self, '_m_two_first') else None

        self._m_two_first = self.two[0]
        return self._m_two_first if hasattr(self, '_m_two_first') else None



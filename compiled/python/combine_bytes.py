# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineBytes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.bytes_term = self._io.read_bytes_term(124, False, True, True)
        self.bytes_limit = self._io.read_bytes(4)
        self.bytes_eos = self._io.read_bytes_full()

    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc if hasattr(self, '_m_limit_or_calc') else None

        self._m_limit_or_calc = (self.bytes_limit if False else self.bytes_calc)
        return self._m_limit_or_calc if hasattr(self, '_m_limit_or_calc') else None

    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit if hasattr(self, '_m_term_or_limit') else None

        self._m_term_or_limit = (self.bytes_term if True else self.bytes_limit)
        return self._m_term_or_limit if hasattr(self, '_m_term_or_limit') else None

    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos if hasattr(self, '_m_limit_or_eos') else None

        self._m_limit_or_eos = (self.bytes_limit if True else self.bytes_eos)
        return self._m_limit_or_eos if hasattr(self, '_m_limit_or_eos') else None

    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc if hasattr(self, '_m_eos_or_calc') else None

        self._m_eos_or_calc = (self.bytes_eos if True else self.bytes_calc)
        return self._m_eos_or_calc if hasattr(self, '_m_eos_or_calc') else None

    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc if hasattr(self, '_m_term_or_calc') else None

        self._m_term_or_calc = (self.bytes_term if True else self.bytes_calc)
        return self._m_term_or_calc if hasattr(self, '_m_term_or_calc') else None

    @property
    def bytes_calc(self):
        if hasattr(self, '_m_bytes_calc'):
            return self._m_bytes_calc if hasattr(self, '_m_bytes_calc') else None

        self._m_bytes_calc = b"\x52\x6E\x44"
        return self._m_bytes_calc if hasattr(self, '_m_bytes_calc') else None

    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos if hasattr(self, '_m_term_or_eos') else None

        self._m_term_or_eos = (self.bytes_term if False else self.bytes_eos)
        return self._m_term_or_eos if hasattr(self, '_m_term_or_eos') else None



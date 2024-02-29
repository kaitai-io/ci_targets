# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

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
    def bytes_calc(self):
        if hasattr(self, '_m_bytes_calc'):
            return self._m_bytes_calc

        self._m_bytes_calc = b"\x52\x6E\x44"
        return getattr(self, '_m_bytes_calc', None)

    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc

        self._m_eos_or_calc = (self.bytes_eos if True else self.bytes_calc)
        return getattr(self, '_m_eos_or_calc', None)

    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc

        self._m_limit_or_calc = (self.bytes_limit if False else self.bytes_calc)
        return getattr(self, '_m_limit_or_calc', None)

    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos

        self._m_limit_or_eos = (self.bytes_limit if True else self.bytes_eos)
        return getattr(self, '_m_limit_or_eos', None)

    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc

        self._m_term_or_calc = (self.bytes_term if True else self.bytes_calc)
        return getattr(self, '_m_term_or_calc', None)

    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos

        self._m_term_or_eos = (self.bytes_term if False else self.bytes_eos)
        return getattr(self, '_m_term_or_eos', None)

    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit

        self._m_term_or_limit = (self.bytes_term if True else self.bytes_limit)
        return getattr(self, '_m_term_or_limit', None)



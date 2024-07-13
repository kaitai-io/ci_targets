# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.str_term = (self._io.read_bytes_term(124, False, True, True)).decode(u"ASCII")
        self.str_limit = (self._io.read_bytes(4)).decode(u"ASCII")
        self.str_eos = (self._io.read_bytes_full()).decode(u"ASCII")

    @property
    def calc_bytes(self):
        if hasattr(self, '_m_calc_bytes'):
            return self._m_calc_bytes

        self._m_calc_bytes = b"\x62\x61\x7A"
        return getattr(self, '_m_calc_bytes', None)

    @property
    def calc_or_calc_bytes(self):
        if hasattr(self, '_m_calc_or_calc_bytes'):
            return self._m_calc_or_calc_bytes

        self._m_calc_or_calc_bytes = (self.str_calc if False else self.str_calc_bytes)
        return getattr(self, '_m_calc_or_calc_bytes', None)

    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc

        self._m_eos_or_calc = (self.str_eos if False else self.str_calc)
        return getattr(self, '_m_eos_or_calc', None)

    @property
    def eos_or_calc_bytes(self):
        if hasattr(self, '_m_eos_or_calc_bytes'):
            return self._m_eos_or_calc_bytes

        self._m_eos_or_calc_bytes = (self.str_eos if True else self.str_calc_bytes)
        return getattr(self, '_m_eos_or_calc_bytes', None)

    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc

        self._m_limit_or_calc = (self.str_limit if False else self.str_calc)
        return getattr(self, '_m_limit_or_calc', None)

    @property
    def limit_or_calc_bytes(self):
        if hasattr(self, '_m_limit_or_calc_bytes'):
            return self._m_limit_or_calc_bytes

        self._m_limit_or_calc_bytes = (self.str_limit if True else self.str_calc_bytes)
        return getattr(self, '_m_limit_or_calc_bytes', None)

    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos

        self._m_limit_or_eos = (self.str_limit if True else self.str_eos)
        return getattr(self, '_m_limit_or_eos', None)

    @property
    def str_calc(self):
        if hasattr(self, '_m_str_calc'):
            return self._m_str_calc

        self._m_str_calc = u"bar"
        return getattr(self, '_m_str_calc', None)

    @property
    def str_calc_bytes(self):
        if hasattr(self, '_m_str_calc_bytes'):
            return self._m_str_calc_bytes

        self._m_str_calc_bytes = (self.calc_bytes).decode(u"ASCII")
        return getattr(self, '_m_str_calc_bytes', None)

    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc

        self._m_term_or_calc = (self.str_term if True else self.str_calc)
        return getattr(self, '_m_term_or_calc', None)

    @property
    def term_or_calc_bytes(self):
        if hasattr(self, '_m_term_or_calc_bytes'):
            return self._m_term_or_calc_bytes

        self._m_term_or_calc_bytes = (self.str_term if False else self.str_calc_bytes)
        return getattr(self, '_m_term_or_calc_bytes', None)

    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos

        self._m_term_or_eos = (self.str_term if False else self.str_eos)
        return getattr(self, '_m_term_or_eos', None)

    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit

        self._m_term_or_limit = (self.str_term if True else self.str_limit)
        return getattr(self, '_m_term_or_limit', None)



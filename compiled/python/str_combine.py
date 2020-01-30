# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrCombine(KaitaiStruct):
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
    def limit_or_calc_bytes(self):
        if hasattr(self, '_m_limit_or_calc_bytes'):
            return self._m_limit_or_calc_bytes if hasattr(self, '_m_limit_or_calc_bytes') else None

        self._m_limit_or_calc_bytes = (self.str_limit if True else self.str_calc_bytes)
        return self._m_limit_or_calc_bytes if hasattr(self, '_m_limit_or_calc_bytes') else None

    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc if hasattr(self, '_m_limit_or_calc') else None

        self._m_limit_or_calc = (self.str_limit if False else self.str_calc)
        return self._m_limit_or_calc if hasattr(self, '_m_limit_or_calc') else None

    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit if hasattr(self, '_m_term_or_limit') else None

        self._m_term_or_limit = (self.str_term if True else self.str_limit)
        return self._m_term_or_limit if hasattr(self, '_m_term_or_limit') else None

    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos if hasattr(self, '_m_limit_or_eos') else None

        self._m_limit_or_eos = (self.str_limit if True else self.str_eos)
        return self._m_limit_or_eos if hasattr(self, '_m_limit_or_eos') else None

    @property
    def calc_or_calc_bytes(self):
        if hasattr(self, '_m_calc_or_calc_bytes'):
            return self._m_calc_or_calc_bytes if hasattr(self, '_m_calc_or_calc_bytes') else None

        self._m_calc_or_calc_bytes = (self.str_calc if False else self.str_calc_bytes)
        return self._m_calc_or_calc_bytes if hasattr(self, '_m_calc_or_calc_bytes') else None

    @property
    def str_calc_bytes(self):
        if hasattr(self, '_m_str_calc_bytes'):
            return self._m_str_calc_bytes if hasattr(self, '_m_str_calc_bytes') else None

        self._m_str_calc_bytes = (self.calc_bytes).decode(u"ASCII")
        return self._m_str_calc_bytes if hasattr(self, '_m_str_calc_bytes') else None

    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc if hasattr(self, '_m_eos_or_calc') else None

        self._m_eos_or_calc = (self.str_eos if False else self.str_calc)
        return self._m_eos_or_calc if hasattr(self, '_m_eos_or_calc') else None

    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc if hasattr(self, '_m_term_or_calc') else None

        self._m_term_or_calc = (self.str_term if True else self.str_calc)
        return self._m_term_or_calc if hasattr(self, '_m_term_or_calc') else None

    @property
    def term_or_calc_bytes(self):
        if hasattr(self, '_m_term_or_calc_bytes'):
            return self._m_term_or_calc_bytes if hasattr(self, '_m_term_or_calc_bytes') else None

        self._m_term_or_calc_bytes = (self.str_term if False else self.str_calc_bytes)
        return self._m_term_or_calc_bytes if hasattr(self, '_m_term_or_calc_bytes') else None

    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos if hasattr(self, '_m_term_or_eos') else None

        self._m_term_or_eos = (self.str_term if False else self.str_eos)
        return self._m_term_or_eos if hasattr(self, '_m_term_or_eos') else None

    @property
    def str_calc(self):
        if hasattr(self, '_m_str_calc'):
            return self._m_str_calc if hasattr(self, '_m_str_calc') else None

        self._m_str_calc = u"bar"
        return self._m_str_calc if hasattr(self, '_m_str_calc') else None

    @property
    def eos_or_calc_bytes(self):
        if hasattr(self, '_m_eos_or_calc_bytes'):
            return self._m_eos_or_calc_bytes if hasattr(self, '_m_eos_or_calc_bytes') else None

        self._m_eos_or_calc_bytes = (self.str_eos if True else self.str_calc_bytes)
        return self._m_eos_or_calc_bytes if hasattr(self, '_m_eos_or_calc_bytes') else None

    @property
    def calc_bytes(self):
        if hasattr(self, '_m_calc_bytes'):
            return self._m_calc_bytes if hasattr(self, '_m_calc_bytes') else None

        self._m_calc_bytes = b"\x62\x61\x7A"
        return self._m_calc_bytes if hasattr(self, '_m_calc_bytes') else None



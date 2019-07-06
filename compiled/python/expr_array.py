# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.aint = [None] * (4)
        for i in range(4):
            self.aint[i] = self._io.read_u4le()

        self.afloat = [None] * (3)
        for i in range(3):
            self.afloat[i] = self._io.read_f8le()

        self.astr = [None] * (3)
        for i in range(3):
            self.astr[i] = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")


    @property
    def aint_first(self):
        if hasattr(self, '_m_aint_first'):
            return self._m_aint_first if hasattr(self, '_m_aint_first') else None

        self._m_aint_first = self.aint[0]
        return self._m_aint_first if hasattr(self, '_m_aint_first') else None

    @property
    def afloat_size(self):
        if hasattr(self, '_m_afloat_size'):
            return self._m_afloat_size if hasattr(self, '_m_afloat_size') else None

        self._m_afloat_size = len(self.afloat)
        return self._m_afloat_size if hasattr(self, '_m_afloat_size') else None

    @property
    def astr_size(self):
        if hasattr(self, '_m_astr_size'):
            return self._m_astr_size if hasattr(self, '_m_astr_size') else None

        self._m_astr_size = len(self.astr)
        return self._m_astr_size if hasattr(self, '_m_astr_size') else None

    @property
    def aint_min(self):
        if hasattr(self, '_m_aint_min'):
            return self._m_aint_min if hasattr(self, '_m_aint_min') else None

        self._m_aint_min = min(self.aint)
        return self._m_aint_min if hasattr(self, '_m_aint_min') else None

    @property
    def afloat_min(self):
        if hasattr(self, '_m_afloat_min'):
            return self._m_afloat_min if hasattr(self, '_m_afloat_min') else None

        self._m_afloat_min = min(self.afloat)
        return self._m_afloat_min if hasattr(self, '_m_afloat_min') else None

    @property
    def aint_size(self):
        if hasattr(self, '_m_aint_size'):
            return self._m_aint_size if hasattr(self, '_m_aint_size') else None

        self._m_aint_size = len(self.aint)
        return self._m_aint_size if hasattr(self, '_m_aint_size') else None

    @property
    def aint_last(self):
        if hasattr(self, '_m_aint_last'):
            return self._m_aint_last if hasattr(self, '_m_aint_last') else None

        self._m_aint_last = self.aint[-1]
        return self._m_aint_last if hasattr(self, '_m_aint_last') else None

    @property
    def afloat_last(self):
        if hasattr(self, '_m_afloat_last'):
            return self._m_afloat_last if hasattr(self, '_m_afloat_last') else None

        self._m_afloat_last = self.afloat[-1]
        return self._m_afloat_last if hasattr(self, '_m_afloat_last') else None

    @property
    def astr_first(self):
        if hasattr(self, '_m_astr_first'):
            return self._m_astr_first if hasattr(self, '_m_astr_first') else None

        self._m_astr_first = self.astr[0]
        return self._m_astr_first if hasattr(self, '_m_astr_first') else None

    @property
    def astr_last(self):
        if hasattr(self, '_m_astr_last'):
            return self._m_astr_last if hasattr(self, '_m_astr_last') else None

        self._m_astr_last = self.astr[-1]
        return self._m_astr_last if hasattr(self, '_m_astr_last') else None

    @property
    def aint_max(self):
        if hasattr(self, '_m_aint_max'):
            return self._m_aint_max if hasattr(self, '_m_aint_max') else None

        self._m_aint_max = max(self.aint)
        return self._m_aint_max if hasattr(self, '_m_aint_max') else None

    @property
    def afloat_first(self):
        if hasattr(self, '_m_afloat_first'):
            return self._m_afloat_first if hasattr(self, '_m_afloat_first') else None

        self._m_afloat_first = self.afloat[0]
        return self._m_afloat_first if hasattr(self, '_m_afloat_first') else None

    @property
    def astr_min(self):
        if hasattr(self, '_m_astr_min'):
            return self._m_astr_min if hasattr(self, '_m_astr_min') else None

        self._m_astr_min = min(self.astr)
        return self._m_astr_min if hasattr(self, '_m_astr_min') else None

    @property
    def astr_max(self):
        if hasattr(self, '_m_astr_max'):
            return self._m_astr_max if hasattr(self, '_m_astr_max') else None

        self._m_astr_max = max(self.astr)
        return self._m_astr_max if hasattr(self, '_m_astr_max') else None

    @property
    def afloat_max(self):
        if hasattr(self, '_m_afloat_max'):
            return self._m_afloat_max if hasattr(self, '_m_afloat_max') else None

        self._m_afloat_max = max(self.afloat)
        return self._m_afloat_max if hasattr(self, '_m_afloat_max') else None



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.aint = []
        for i in range(4):
            self.aint.append(self._io.read_u4le())

        self.afloat = []
        for i in range(3):
            self.afloat.append(self._io.read_f8le())

        self.astr = []
        for i in range(3):
            self.astr.append((self._io.read_bytes_term(0, False, True, True)).decode("UTF-8"))


    @property
    def afloat_first(self):
        if hasattr(self, '_m_afloat_first'):
            return self._m_afloat_first

        self._m_afloat_first = self.afloat[0]
        return getattr(self, '_m_afloat_first', None)

    @property
    def afloat_last(self):
        if hasattr(self, '_m_afloat_last'):
            return self._m_afloat_last

        self._m_afloat_last = self.afloat[-1]
        return getattr(self, '_m_afloat_last', None)

    @property
    def afloat_max(self):
        if hasattr(self, '_m_afloat_max'):
            return self._m_afloat_max

        self._m_afloat_max = max(self.afloat)
        return getattr(self, '_m_afloat_max', None)

    @property
    def afloat_min(self):
        if hasattr(self, '_m_afloat_min'):
            return self._m_afloat_min

        self._m_afloat_min = min(self.afloat)
        return getattr(self, '_m_afloat_min', None)

    @property
    def afloat_size(self):
        if hasattr(self, '_m_afloat_size'):
            return self._m_afloat_size

        self._m_afloat_size = len(self.afloat)
        return getattr(self, '_m_afloat_size', None)

    @property
    def aint_first(self):
        if hasattr(self, '_m_aint_first'):
            return self._m_aint_first

        self._m_aint_first = self.aint[0]
        return getattr(self, '_m_aint_first', None)

    @property
    def aint_last(self):
        if hasattr(self, '_m_aint_last'):
            return self._m_aint_last

        self._m_aint_last = self.aint[-1]
        return getattr(self, '_m_aint_last', None)

    @property
    def aint_max(self):
        if hasattr(self, '_m_aint_max'):
            return self._m_aint_max

        self._m_aint_max = max(self.aint)
        return getattr(self, '_m_aint_max', None)

    @property
    def aint_min(self):
        if hasattr(self, '_m_aint_min'):
            return self._m_aint_min

        self._m_aint_min = min(self.aint)
        return getattr(self, '_m_aint_min', None)

    @property
    def aint_size(self):
        if hasattr(self, '_m_aint_size'):
            return self._m_aint_size

        self._m_aint_size = len(self.aint)
        return getattr(self, '_m_aint_size', None)

    @property
    def astr_first(self):
        if hasattr(self, '_m_astr_first'):
            return self._m_astr_first

        self._m_astr_first = self.astr[0]
        return getattr(self, '_m_astr_first', None)

    @property
    def astr_last(self):
        if hasattr(self, '_m_astr_last'):
            return self._m_astr_last

        self._m_astr_last = self.astr[-1]
        return getattr(self, '_m_astr_last', None)

    @property
    def astr_max(self):
        if hasattr(self, '_m_astr_max'):
            return self._m_astr_max

        self._m_astr_max = max(self.astr)
        return getattr(self, '_m_astr_max', None)

    @property
    def astr_min(self):
        if hasattr(self, '_m_astr_min'):
            return self._m_astr_min

        self._m_astr_min = min(self.astr)
        return getattr(self, '_m_astr_min', None)

    @property
    def astr_size(self):
        if hasattr(self, '_m_astr_size'):
            return self._m_astr_size

        self._m_astr_size = len(self.astr)
        return getattr(self, '_m_astr_size', None)



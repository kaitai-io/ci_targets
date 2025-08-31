# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprArray(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.aint = []
        for i in range(4):
            self.aint.append(self._io.read_u4le())

        self.afloat = []
        for i in range(3):
            self.afloat.append(self._io.read_f8le())

        self.astr = []
        for i in range(3):
            self.astr.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))



    def _fetch_instances(self):
        pass
        for i in range(len(self.aint)):
            pass

        for i in range(len(self.afloat)):
            pass

        for i in range(len(self.astr)):
            pass



    def _write__seq(self, io=None):
        super(ExprArray, self)._write__seq(io)
        for i in range(len(self.aint)):
            pass
            self._io.write_u4le(self.aint[i])

        for i in range(len(self.afloat)):
            pass
            self._io.write_f8le(self.afloat[i])

        for i in range(len(self.astr)):
            pass
            self._io.write_bytes((self.astr[i]).encode(u"UTF-8"))
            self._io.write_u1(0)



    def _check(self):
        pass
        if len(self.aint) != 4:
            raise kaitaistruct.ConsistencyError(u"aint", len(self.aint), 4)
        for i in range(len(self.aint)):
            pass

        if len(self.afloat) != 3:
            raise kaitaistruct.ConsistencyError(u"afloat", len(self.afloat), 3)
        for i in range(len(self.afloat)):
            pass

        if len(self.astr) != 3:
            raise kaitaistruct.ConsistencyError(u"astr", len(self.astr), 3)
        for i in range(len(self.astr)):
            pass
            if KaitaiStream.byte_array_index_of((self.astr[i]).encode(u"UTF-8"), 0) != -1:
                raise kaitaistruct.ConsistencyError(u"astr", KaitaiStream.byte_array_index_of((self.astr[i]).encode(u"UTF-8"), 0), -1)


    @property
    def afloat_first(self):
        if hasattr(self, '_m_afloat_first'):
            return self._m_afloat_first

        self._m_afloat_first = self.afloat[0]
        return getattr(self, '_m_afloat_first', None)

    def _invalidate_afloat_first(self):
        del self._m_afloat_first
    @property
    def afloat_last(self):
        if hasattr(self, '_m_afloat_last'):
            return self._m_afloat_last

        self._m_afloat_last = self.afloat[-1]
        return getattr(self, '_m_afloat_last', None)

    def _invalidate_afloat_last(self):
        del self._m_afloat_last
    @property
    def afloat_max(self):
        if hasattr(self, '_m_afloat_max'):
            return self._m_afloat_max

        self._m_afloat_max = max(self.afloat)
        return getattr(self, '_m_afloat_max', None)

    def _invalidate_afloat_max(self):
        del self._m_afloat_max
    @property
    def afloat_min(self):
        if hasattr(self, '_m_afloat_min'):
            return self._m_afloat_min

        self._m_afloat_min = min(self.afloat)
        return getattr(self, '_m_afloat_min', None)

    def _invalidate_afloat_min(self):
        del self._m_afloat_min
    @property
    def afloat_size(self):
        if hasattr(self, '_m_afloat_size'):
            return self._m_afloat_size

        self._m_afloat_size = len(self.afloat)
        return getattr(self, '_m_afloat_size', None)

    def _invalidate_afloat_size(self):
        del self._m_afloat_size
    @property
    def aint_first(self):
        if hasattr(self, '_m_aint_first'):
            return self._m_aint_first

        self._m_aint_first = self.aint[0]
        return getattr(self, '_m_aint_first', None)

    def _invalidate_aint_first(self):
        del self._m_aint_first
    @property
    def aint_last(self):
        if hasattr(self, '_m_aint_last'):
            return self._m_aint_last

        self._m_aint_last = self.aint[-1]
        return getattr(self, '_m_aint_last', None)

    def _invalidate_aint_last(self):
        del self._m_aint_last
    @property
    def aint_max(self):
        if hasattr(self, '_m_aint_max'):
            return self._m_aint_max

        self._m_aint_max = max(self.aint)
        return getattr(self, '_m_aint_max', None)

    def _invalidate_aint_max(self):
        del self._m_aint_max
    @property
    def aint_min(self):
        if hasattr(self, '_m_aint_min'):
            return self._m_aint_min

        self._m_aint_min = min(self.aint)
        return getattr(self, '_m_aint_min', None)

    def _invalidate_aint_min(self):
        del self._m_aint_min
    @property
    def aint_size(self):
        if hasattr(self, '_m_aint_size'):
            return self._m_aint_size

        self._m_aint_size = len(self.aint)
        return getattr(self, '_m_aint_size', None)

    def _invalidate_aint_size(self):
        del self._m_aint_size
    @property
    def astr_first(self):
        if hasattr(self, '_m_astr_first'):
            return self._m_astr_first

        self._m_astr_first = self.astr[0]
        return getattr(self, '_m_astr_first', None)

    def _invalidate_astr_first(self):
        del self._m_astr_first
    @property
    def astr_last(self):
        if hasattr(self, '_m_astr_last'):
            return self._m_astr_last

        self._m_astr_last = self.astr[-1]
        return getattr(self, '_m_astr_last', None)

    def _invalidate_astr_last(self):
        del self._m_astr_last
    @property
    def astr_max(self):
        if hasattr(self, '_m_astr_max'):
            return self._m_astr_max

        self._m_astr_max = max(self.astr)
        return getattr(self, '_m_astr_max', None)

    def _invalidate_astr_max(self):
        del self._m_astr_max
    @property
    def astr_min(self):
        if hasattr(self, '_m_astr_min'):
            return self._m_astr_min

        self._m_astr_min = min(self.astr)
        return getattr(self, '_m_astr_min', None)

    def _invalidate_astr_min(self):
        del self._m_astr_min
    @property
    def astr_size(self):
        if hasattr(self, '_m_astr_size'):
            return self._m_astr_size

        self._m_astr_size = len(self.astr)
        return getattr(self, '_m_astr_size', None)

    def _invalidate_astr_size(self):
        del self._m_astr_size


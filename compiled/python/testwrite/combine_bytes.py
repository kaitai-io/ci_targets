# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.bytes_term = self._io.read_bytes_term(124, False, True, True)
        self.bytes_limit = self._io.read_bytes(4)
        self.bytes_eos = self._io.read_bytes_full()


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(CombineBytes, self)._write__seq(io)
        self._io.write_bytes(self.bytes_term)
        self._io.write_u1(124)
        self._io.write_bytes(self.bytes_limit)
        self._io.write_bytes(self.bytes_eos)
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"bytes_eos", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass
        if KaitaiStream.byte_array_index_of(self.bytes_term, 124) != -1:
            raise kaitaistruct.ConsistencyError(u"bytes_term", KaitaiStream.byte_array_index_of(self.bytes_term, 124), -1)
        if len(self.bytes_limit) != 4:
            raise kaitaistruct.ConsistencyError(u"bytes_limit", len(self.bytes_limit), 4)

    @property
    def bytes_calc(self):
        if hasattr(self, '_m_bytes_calc'):
            return self._m_bytes_calc

        self._m_bytes_calc = b"\x52\x6E\x44"
        return getattr(self, '_m_bytes_calc', None)

    def _invalidate_bytes_calc(self):
        del self._m_bytes_calc
    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc

        self._m_eos_or_calc = (self.bytes_eos if True else self.bytes_calc)
        return getattr(self, '_m_eos_or_calc', None)

    def _invalidate_eos_or_calc(self):
        del self._m_eos_or_calc
    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc

        self._m_limit_or_calc = (self.bytes_limit if False else self.bytes_calc)
        return getattr(self, '_m_limit_or_calc', None)

    def _invalidate_limit_or_calc(self):
        del self._m_limit_or_calc
    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos

        self._m_limit_or_eos = (self.bytes_limit if True else self.bytes_eos)
        return getattr(self, '_m_limit_or_eos', None)

    def _invalidate_limit_or_eos(self):
        del self._m_limit_or_eos
    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc

        self._m_term_or_calc = (self.bytes_term if True else self.bytes_calc)
        return getattr(self, '_m_term_or_calc', None)

    def _invalidate_term_or_calc(self):
        del self._m_term_or_calc
    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos

        self._m_term_or_eos = (self.bytes_term if False else self.bytes_eos)
        return getattr(self, '_m_term_or_eos', None)

    def _invalidate_term_or_eos(self):
        del self._m_term_or_eos
    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit

        self._m_term_or_limit = (self.bytes_term if True else self.bytes_limit)
        return getattr(self, '_m_term_or_limit', None)

    def _invalidate_term_or_limit(self):
        del self._m_term_or_limit


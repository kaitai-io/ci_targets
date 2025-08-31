# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineStr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.str_term = (self._io.read_bytes_term(124, False, True, True)).decode(u"ASCII")
        self.str_limit = (self._io.read_bytes(4)).decode(u"ASCII")
        self.str_eos = (self._io.read_bytes_full()).decode(u"ASCII")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(CombineStr, self)._write__seq(io)
        self._io.write_bytes((self.str_term).encode(u"ASCII"))
        self._io.write_u1(124)
        self._io.write_bytes((self.str_limit).encode(u"ASCII"))
        self._io.write_bytes((self.str_eos).encode(u"ASCII"))
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"str_eos", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass
        if KaitaiStream.byte_array_index_of((self.str_term).encode(u"ASCII"), 124) != -1:
            raise kaitaistruct.ConsistencyError(u"str_term", KaitaiStream.byte_array_index_of((self.str_term).encode(u"ASCII"), 124), -1)
        if len((self.str_limit).encode(u"ASCII")) != 4:
            raise kaitaistruct.ConsistencyError(u"str_limit", len((self.str_limit).encode(u"ASCII")), 4)

    @property
    def calc_bytes(self):
        if hasattr(self, '_m_calc_bytes'):
            return self._m_calc_bytes

        self._m_calc_bytes = b"\x62\x61\x7A"
        return getattr(self, '_m_calc_bytes', None)

    def _invalidate_calc_bytes(self):
        del self._m_calc_bytes
    @property
    def calc_or_calc_bytes(self):
        if hasattr(self, '_m_calc_or_calc_bytes'):
            return self._m_calc_or_calc_bytes

        self._m_calc_or_calc_bytes = (self.str_calc if False else self.str_calc_bytes)
        return getattr(self, '_m_calc_or_calc_bytes', None)

    def _invalidate_calc_or_calc_bytes(self):
        del self._m_calc_or_calc_bytes
    @property
    def eos_or_calc(self):
        if hasattr(self, '_m_eos_or_calc'):
            return self._m_eos_or_calc

        self._m_eos_or_calc = (self.str_eos if False else self.str_calc)
        return getattr(self, '_m_eos_or_calc', None)

    def _invalidate_eos_or_calc(self):
        del self._m_eos_or_calc
    @property
    def eos_or_calc_bytes(self):
        if hasattr(self, '_m_eos_or_calc_bytes'):
            return self._m_eos_or_calc_bytes

        self._m_eos_or_calc_bytes = (self.str_eos if True else self.str_calc_bytes)
        return getattr(self, '_m_eos_or_calc_bytes', None)

    def _invalidate_eos_or_calc_bytes(self):
        del self._m_eos_or_calc_bytes
    @property
    def limit_or_calc(self):
        if hasattr(self, '_m_limit_or_calc'):
            return self._m_limit_or_calc

        self._m_limit_or_calc = (self.str_limit if False else self.str_calc)
        return getattr(self, '_m_limit_or_calc', None)

    def _invalidate_limit_or_calc(self):
        del self._m_limit_or_calc
    @property
    def limit_or_calc_bytes(self):
        if hasattr(self, '_m_limit_or_calc_bytes'):
            return self._m_limit_or_calc_bytes

        self._m_limit_or_calc_bytes = (self.str_limit if True else self.str_calc_bytes)
        return getattr(self, '_m_limit_or_calc_bytes', None)

    def _invalidate_limit_or_calc_bytes(self):
        del self._m_limit_or_calc_bytes
    @property
    def limit_or_eos(self):
        if hasattr(self, '_m_limit_or_eos'):
            return self._m_limit_or_eos

        self._m_limit_or_eos = (self.str_limit if True else self.str_eos)
        return getattr(self, '_m_limit_or_eos', None)

    def _invalidate_limit_or_eos(self):
        del self._m_limit_or_eos
    @property
    def str_calc(self):
        if hasattr(self, '_m_str_calc'):
            return self._m_str_calc

        self._m_str_calc = u"bar"
        return getattr(self, '_m_str_calc', None)

    def _invalidate_str_calc(self):
        del self._m_str_calc
    @property
    def str_calc_bytes(self):
        if hasattr(self, '_m_str_calc_bytes'):
            return self._m_str_calc_bytes

        self._m_str_calc_bytes = (self.calc_bytes).decode(u"ASCII")
        return getattr(self, '_m_str_calc_bytes', None)

    def _invalidate_str_calc_bytes(self):
        del self._m_str_calc_bytes
    @property
    def term_or_calc(self):
        if hasattr(self, '_m_term_or_calc'):
            return self._m_term_or_calc

        self._m_term_or_calc = (self.str_term if True else self.str_calc)
        return getattr(self, '_m_term_or_calc', None)

    def _invalidate_term_or_calc(self):
        del self._m_term_or_calc
    @property
    def term_or_calc_bytes(self):
        if hasattr(self, '_m_term_or_calc_bytes'):
            return self._m_term_or_calc_bytes

        self._m_term_or_calc_bytes = (self.str_term if False else self.str_calc_bytes)
        return getattr(self, '_m_term_or_calc_bytes', None)

    def _invalidate_term_or_calc_bytes(self):
        del self._m_term_or_calc_bytes
    @property
    def term_or_eos(self):
        if hasattr(self, '_m_term_or_eos'):
            return self._m_term_or_eos

        self._m_term_or_eos = (self.str_term if False else self.str_eos)
        return getattr(self, '_m_term_or_eos', None)

    def _invalidate_term_or_eos(self):
        del self._m_term_or_eos
    @property
    def term_or_limit(self):
        if hasattr(self, '_m_term_or_limit'):
            return self._m_term_or_limit

        self._m_term_or_limit = (self.str_term if True else self.str_limit)
        return getattr(self, '_m_term_or_limit', None)

    def _invalidate_term_or_limit(self):
        del self._m_term_or_limit


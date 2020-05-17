# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeTernary2ndFalsy(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.int_truthy = self._io.read_u1()
        self.ut = TypeTernary2ndFalsy.Foo(self._io, self, self._root)
        self.int_array = [None] * (2)
        for i in range(2):
            self.int_array[i] = self._io.read_u1()

        self.int_array_empty = [None] * (0)
        for i in range(0):
            self.int_array_empty[i] = self._io.read_u1()


    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.m = self._io.read_u1()


    @property
    def null_ut(self):
        if hasattr(self, '_m_null_ut'):
            return self._m_null_ut if hasattr(self, '_m_null_ut') else None

        if False:
            self._m_null_ut = self.ut

        return self._m_null_ut if hasattr(self, '_m_null_ut') else None

    @property
    def v_float_zero(self):
        if hasattr(self, '_m_v_float_zero'):
            return self._m_v_float_zero if hasattr(self, '_m_v_float_zero') else None

        self._m_v_float_zero = (0.0 if self.t else 3.14)
        return self._m_v_float_zero if hasattr(self, '_m_v_float_zero') else None

    @property
    def t(self):
        if hasattr(self, '_m_t'):
            return self._m_t if hasattr(self, '_m_t') else None

        self._m_t = True
        return self._m_t if hasattr(self, '_m_t') else None

    @property
    def v_int_neg_zero(self):
        if hasattr(self, '_m_v_int_neg_zero'):
            return self._m_v_int_neg_zero if hasattr(self, '_m_v_int_neg_zero') else None

        self._m_v_int_neg_zero = (-0 if self.t else -20)
        return self._m_v_int_neg_zero if hasattr(self, '_m_v_int_neg_zero') else None

    @property
    def v_int_zero(self):
        if hasattr(self, '_m_v_int_zero'):
            return self._m_v_int_zero if hasattr(self, '_m_v_int_zero') else None

        self._m_v_int_zero = (0 if self.t else 10)
        return self._m_v_int_zero if hasattr(self, '_m_v_int_zero') else None

    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false if hasattr(self, '_m_v_false') else None

        self._m_v_false = (False if self.t else True)
        return self._m_v_false if hasattr(self, '_m_v_false') else None

    @property
    def v_str_empty(self):
        if hasattr(self, '_m_v_str_empty'):
            return self._m_v_str_empty if hasattr(self, '_m_v_str_empty') else None

        self._m_v_str_empty = (u"" if self.t else u"kaitai")
        return self._m_v_str_empty if hasattr(self, '_m_v_str_empty') else None

    @property
    def v_int_array_empty(self):
        if hasattr(self, '_m_v_int_array_empty'):
            return self._m_v_int_array_empty if hasattr(self, '_m_v_int_array_empty') else None

        self._m_v_int_array_empty = (self.int_array_empty if self.t else self.int_array)
        return self._m_v_int_array_empty if hasattr(self, '_m_v_int_array_empty') else None

    @property
    def v_null_ut(self):
        if hasattr(self, '_m_v_null_ut'):
            return self._m_v_null_ut if hasattr(self, '_m_v_null_ut') else None

        self._m_v_null_ut = (self.null_ut if self.t else self.ut)
        return self._m_v_null_ut if hasattr(self, '_m_v_null_ut') else None

    @property
    def v_float_neg_zero(self):
        if hasattr(self, '_m_v_float_neg_zero'):
            return self._m_v_float_neg_zero if hasattr(self, '_m_v_float_neg_zero') else None

        self._m_v_float_neg_zero = (-0.0 if self.t else -2.72)
        return self._m_v_float_neg_zero if hasattr(self, '_m_v_float_neg_zero') else None

    @property
    def v_str_w_zero(self):
        if hasattr(self, '_m_v_str_w_zero'):
            return self._m_v_str_w_zero if hasattr(self, '_m_v_str_w_zero') else None

        self._m_v_str_w_zero = (u"0" if self.t else u"30")
        return self._m_v_str_w_zero if hasattr(self, '_m_v_str_w_zero') else None



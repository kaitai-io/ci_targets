# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeTernary2ndFalsy(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.int_truthy = self._io.read_u1()
        self.ut = TypeTernary2ndFalsy.Foo(self._io, self, self._root)
        self.int_array = []
        for i in range(2):
            self.int_array.append(self._io.read_u1())

        self.int_array_empty = []
        for i in range(0):
            self.int_array_empty.append(self._io.read_u1())



    def _fetch_instances(self):
        pass
        self.ut._fetch_instances()
        for i in range(len(self.int_array)):
            pass

        for i in range(len(self.int_array_empty)):
            pass


    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.m = self._io.read_u1()


        def _fetch_instances(self):
            pass


    @property
    def null_ut(self):
        if hasattr(self, '_m_null_ut'):
            return self._m_null_ut

        if False:
            pass
            self._m_null_ut = self.ut

        return getattr(self, '_m_null_ut', None)

    @property
    def t(self):
        if hasattr(self, '_m_t'):
            return self._m_t

        self._m_t = True
        return getattr(self, '_m_t', None)

    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false

        self._m_v_false = (False if self.t else True)
        return getattr(self, '_m_v_false', None)

    @property
    def v_float_neg_zero(self):
        if hasattr(self, '_m_v_float_neg_zero'):
            return self._m_v_float_neg_zero

        self._m_v_float_neg_zero = (-0.0 if self.t else -2.72)
        return getattr(self, '_m_v_float_neg_zero', None)

    @property
    def v_float_zero(self):
        if hasattr(self, '_m_v_float_zero'):
            return self._m_v_float_zero

        self._m_v_float_zero = (0.0 if self.t else 3.14)
        return getattr(self, '_m_v_float_zero', None)

    @property
    def v_int_array_empty(self):
        if hasattr(self, '_m_v_int_array_empty'):
            return self._m_v_int_array_empty

        self._m_v_int_array_empty = (self.int_array_empty if self.t else self.int_array)
        return getattr(self, '_m_v_int_array_empty', None)

    @property
    def v_int_neg_zero(self):
        if hasattr(self, '_m_v_int_neg_zero'):
            return self._m_v_int_neg_zero

        self._m_v_int_neg_zero = (0 if self.t else -20)
        return getattr(self, '_m_v_int_neg_zero', None)

    @property
    def v_int_zero(self):
        if hasattr(self, '_m_v_int_zero'):
            return self._m_v_int_zero

        self._m_v_int_zero = (0 if self.t else 10)
        return getattr(self, '_m_v_int_zero', None)

    @property
    def v_null_ut(self):
        if hasattr(self, '_m_v_null_ut'):
            return self._m_v_null_ut

        self._m_v_null_ut = (self.null_ut if self.t else self.ut)
        return getattr(self, '_m_v_null_ut', None)

    @property
    def v_str_empty(self):
        if hasattr(self, '_m_v_str_empty'):
            return self._m_v_str_empty

        self._m_v_str_empty = (u"" if self.t else u"kaitai")
        return getattr(self, '_m_v_str_empty', None)

    @property
    def v_str_w_zero(self):
        if hasattr(self, '_m_v_str_w_zero'):
            return self._m_v_str_w_zero

        self._m_v_str_w_zero = (u"0" if self.t else u"30")
        return getattr(self, '_m_v_str_w_zero', None)



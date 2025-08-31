# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeTernary2ndFalsy(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.int_truthy = self._io.read_u1()
        self.ut = TypeTernary2ndFalsy.Foo(self._io, self, self._root)
        self.ut._read()
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



    def _write__seq(self, io=None):
        super(TypeTernary2ndFalsy, self)._write__seq(io)
        self._io.write_u1(self.int_truthy)
        self.ut._write__seq(self._io)
        for i in range(len(self.int_array)):
            pass
            self._io.write_u1(self.int_array[i])

        for i in range(len(self.int_array_empty)):
            pass
            self._io.write_u1(self.int_array_empty[i])



    def _check(self):
        pass
        if self.ut._root != self._root:
            raise kaitaistruct.ConsistencyError(u"ut", self.ut._root, self._root)
        if self.ut._parent != self:
            raise kaitaistruct.ConsistencyError(u"ut", self.ut._parent, self)
        if len(self.int_array) != 2:
            raise kaitaistruct.ConsistencyError(u"int_array", len(self.int_array), 2)
        for i in range(len(self.int_array)):
            pass

        if len(self.int_array_empty) != 0:
            raise kaitaistruct.ConsistencyError(u"int_array_empty", len(self.int_array_empty), 0)
        for i in range(len(self.int_array_empty)):
            pass


    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.m = self._io.read_u1()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(TypeTernary2ndFalsy.Foo, self)._write__seq(io)
            self._io.write_u1(self.m)


        def _check(self):
            pass


    @property
    def null_ut(self):
        if hasattr(self, '_m_null_ut'):
            return self._m_null_ut

        if False:
            pass
            self._m_null_ut = self.ut

        return getattr(self, '_m_null_ut', None)

    def _invalidate_null_ut(self):
        del self._m_null_ut
    @property
    def t(self):
        if hasattr(self, '_m_t'):
            return self._m_t

        self._m_t = True
        return getattr(self, '_m_t', None)

    def _invalidate_t(self):
        del self._m_t
    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false

        self._m_v_false = (False if self.t else True)
        return getattr(self, '_m_v_false', None)

    def _invalidate_v_false(self):
        del self._m_v_false
    @property
    def v_float_neg_zero(self):
        if hasattr(self, '_m_v_float_neg_zero'):
            return self._m_v_float_neg_zero

        self._m_v_float_neg_zero = (-0.0 if self.t else -2.72)
        return getattr(self, '_m_v_float_neg_zero', None)

    def _invalidate_v_float_neg_zero(self):
        del self._m_v_float_neg_zero
    @property
    def v_float_zero(self):
        if hasattr(self, '_m_v_float_zero'):
            return self._m_v_float_zero

        self._m_v_float_zero = (0.0 if self.t else 3.14)
        return getattr(self, '_m_v_float_zero', None)

    def _invalidate_v_float_zero(self):
        del self._m_v_float_zero
    @property
    def v_int_array_empty(self):
        if hasattr(self, '_m_v_int_array_empty'):
            return self._m_v_int_array_empty

        self._m_v_int_array_empty = (self.int_array_empty if self.t else self.int_array)
        return getattr(self, '_m_v_int_array_empty', None)

    def _invalidate_v_int_array_empty(self):
        del self._m_v_int_array_empty
    @property
    def v_int_neg_zero(self):
        if hasattr(self, '_m_v_int_neg_zero'):
            return self._m_v_int_neg_zero

        self._m_v_int_neg_zero = (0 if self.t else -20)
        return getattr(self, '_m_v_int_neg_zero', None)

    def _invalidate_v_int_neg_zero(self):
        del self._m_v_int_neg_zero
    @property
    def v_int_zero(self):
        if hasattr(self, '_m_v_int_zero'):
            return self._m_v_int_zero

        self._m_v_int_zero = (0 if self.t else 10)
        return getattr(self, '_m_v_int_zero', None)

    def _invalidate_v_int_zero(self):
        del self._m_v_int_zero
    @property
    def v_null_ut(self):
        if hasattr(self, '_m_v_null_ut'):
            return self._m_v_null_ut

        self._m_v_null_ut = (self.null_ut if self.t else self.ut)
        return getattr(self, '_m_v_null_ut', None)

    def _invalidate_v_null_ut(self):
        del self._m_v_null_ut
    @property
    def v_str_empty(self):
        if hasattr(self, '_m_v_str_empty'):
            return self._m_v_str_empty

        self._m_v_str_empty = (u"" if self.t else u"kaitai")
        return getattr(self, '_m_v_str_empty', None)

    def _invalidate_v_str_empty(self):
        del self._m_v_str_empty
    @property
    def v_str_w_zero(self):
        if hasattr(self, '_m_v_str_w_zero'):
            return self._m_v_str_w_zero

        self._m_v_str_w_zero = (u"0" if self.t else u"30")
        return getattr(self, '_m_v_str_w_zero', None)

    def _invalidate_v_str_w_zero(self):
        del self._m_v_str_w_zero


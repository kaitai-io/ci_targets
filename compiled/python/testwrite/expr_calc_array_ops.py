# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprCalcArrayOps(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprCalcArrayOps, self)._write__seq(io)


    def _check(self):
        pass

    @property
    def double_array(self):
        if hasattr(self, '_m_double_array'):
            return self._m_double_array

        self._m_double_array = [10.0, 25.0, 50.0, 100.0, 3.14159]
        return getattr(self, '_m_double_array', None)

    def _invalidate_double_array(self):
        del self._m_double_array
    @property
    def double_array_first(self):
        if hasattr(self, '_m_double_array_first'):
            return self._m_double_array_first

        self._m_double_array_first = self.double_array[0]
        return getattr(self, '_m_double_array_first', None)

    def _invalidate_double_array_first(self):
        del self._m_double_array_first
    @property
    def double_array_last(self):
        if hasattr(self, '_m_double_array_last'):
            return self._m_double_array_last

        self._m_double_array_last = self.double_array[-1]
        return getattr(self, '_m_double_array_last', None)

    def _invalidate_double_array_last(self):
        del self._m_double_array_last
    @property
    def double_array_max(self):
        if hasattr(self, '_m_double_array_max'):
            return self._m_double_array_max

        self._m_double_array_max = max(self.double_array)
        return getattr(self, '_m_double_array_max', None)

    def _invalidate_double_array_max(self):
        del self._m_double_array_max
    @property
    def double_array_mid(self):
        if hasattr(self, '_m_double_array_mid'):
            return self._m_double_array_mid

        self._m_double_array_mid = self.double_array[1]
        return getattr(self, '_m_double_array_mid', None)

    def _invalidate_double_array_mid(self):
        del self._m_double_array_mid
    @property
    def double_array_min(self):
        if hasattr(self, '_m_double_array_min'):
            return self._m_double_array_min

        self._m_double_array_min = min(self.double_array)
        return getattr(self, '_m_double_array_min', None)

    def _invalidate_double_array_min(self):
        del self._m_double_array_min
    @property
    def double_array_size(self):
        if hasattr(self, '_m_double_array_size'):
            return self._m_double_array_size

        self._m_double_array_size = len(self.double_array)
        return getattr(self, '_m_double_array_size', None)

    def _invalidate_double_array_size(self):
        del self._m_double_array_size
    @property
    def int_array(self):
        if hasattr(self, '_m_int_array'):
            return self._m_int_array

        self._m_int_array = [10, 25, 50, 100, 200, 500, 1000]
        return getattr(self, '_m_int_array', None)

    def _invalidate_int_array(self):
        del self._m_int_array
    @property
    def int_array_first(self):
        if hasattr(self, '_m_int_array_first'):
            return self._m_int_array_first

        self._m_int_array_first = self.int_array[0]
        return getattr(self, '_m_int_array_first', None)

    def _invalidate_int_array_first(self):
        del self._m_int_array_first
    @property
    def int_array_last(self):
        if hasattr(self, '_m_int_array_last'):
            return self._m_int_array_last

        self._m_int_array_last = self.int_array[-1]
        return getattr(self, '_m_int_array_last', None)

    def _invalidate_int_array_last(self):
        del self._m_int_array_last
    @property
    def int_array_max(self):
        if hasattr(self, '_m_int_array_max'):
            return self._m_int_array_max

        self._m_int_array_max = max(self.int_array)
        return getattr(self, '_m_int_array_max', None)

    def _invalidate_int_array_max(self):
        del self._m_int_array_max
    @property
    def int_array_mid(self):
        if hasattr(self, '_m_int_array_mid'):
            return self._m_int_array_mid

        self._m_int_array_mid = self.int_array[1]
        return getattr(self, '_m_int_array_mid', None)

    def _invalidate_int_array_mid(self):
        del self._m_int_array_mid
    @property
    def int_array_min(self):
        if hasattr(self, '_m_int_array_min'):
            return self._m_int_array_min

        self._m_int_array_min = min(self.int_array)
        return getattr(self, '_m_int_array_min', None)

    def _invalidate_int_array_min(self):
        del self._m_int_array_min
    @property
    def int_array_size(self):
        if hasattr(self, '_m_int_array_size'):
            return self._m_int_array_size

        self._m_int_array_size = len(self.int_array)
        return getattr(self, '_m_int_array_size', None)

    def _invalidate_int_array_size(self):
        del self._m_int_array_size
    @property
    def str_array(self):
        if hasattr(self, '_m_str_array'):
            return self._m_str_array

        self._m_str_array = [u"un", u"deux", u"trois", u"quatre"]
        return getattr(self, '_m_str_array', None)

    def _invalidate_str_array(self):
        del self._m_str_array
    @property
    def str_array_first(self):
        if hasattr(self, '_m_str_array_first'):
            return self._m_str_array_first

        self._m_str_array_first = self.str_array[0]
        return getattr(self, '_m_str_array_first', None)

    def _invalidate_str_array_first(self):
        del self._m_str_array_first
    @property
    def str_array_last(self):
        if hasattr(self, '_m_str_array_last'):
            return self._m_str_array_last

        self._m_str_array_last = self.str_array[-1]
        return getattr(self, '_m_str_array_last', None)

    def _invalidate_str_array_last(self):
        del self._m_str_array_last
    @property
    def str_array_max(self):
        if hasattr(self, '_m_str_array_max'):
            return self._m_str_array_max

        self._m_str_array_max = max(self.str_array)
        return getattr(self, '_m_str_array_max', None)

    def _invalidate_str_array_max(self):
        del self._m_str_array_max
    @property
    def str_array_mid(self):
        if hasattr(self, '_m_str_array_mid'):
            return self._m_str_array_mid

        self._m_str_array_mid = self.str_array[1]
        return getattr(self, '_m_str_array_mid', None)

    def _invalidate_str_array_mid(self):
        del self._m_str_array_mid
    @property
    def str_array_min(self):
        if hasattr(self, '_m_str_array_min'):
            return self._m_str_array_min

        self._m_str_array_min = min(self.str_array)
        return getattr(self, '_m_str_array_min', None)

    def _invalidate_str_array_min(self):
        del self._m_str_array_min
    @property
    def str_array_size(self):
        if hasattr(self, '_m_str_array_size'):
            return self._m_str_array_size

        self._m_str_array_size = len(self.str_array)
        return getattr(self, '_m_str_array_size', None)

    def _invalidate_str_array_size(self):
        del self._m_str_array_size


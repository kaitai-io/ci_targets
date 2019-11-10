# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprCalcArrayOps(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def double_array(self):
        if hasattr(self, '_m_double_array'):
            return self._m_double_array if hasattr(self, '_m_double_array') else None

        self._m_double_array = [10.0, 25.0, 50.0, 100.0, 3.14159]
        return self._m_double_array if hasattr(self, '_m_double_array') else None

    @property
    def int_array_size(self):
        if hasattr(self, '_m_int_array_size'):
            return self._m_int_array_size if hasattr(self, '_m_int_array_size') else None

        self._m_int_array_size = len(self.int_array)
        return self._m_int_array_size if hasattr(self, '_m_int_array_size') else None

    @property
    def int_array_max(self):
        if hasattr(self, '_m_int_array_max'):
            return self._m_int_array_max if hasattr(self, '_m_int_array_max') else None

        self._m_int_array_max = max(self.int_array)
        return self._m_int_array_max if hasattr(self, '_m_int_array_max') else None

    @property
    def double_array_max(self):
        if hasattr(self, '_m_double_array_max'):
            return self._m_double_array_max if hasattr(self, '_m_double_array_max') else None

        self._m_double_array_max = max(self.double_array)
        return self._m_double_array_max if hasattr(self, '_m_double_array_max') else None

    @property
    def str_array_max(self):
        if hasattr(self, '_m_str_array_max'):
            return self._m_str_array_max if hasattr(self, '_m_str_array_max') else None

        self._m_str_array_max = max(self.str_array)
        return self._m_str_array_max if hasattr(self, '_m_str_array_max') else None

    @property
    def str_array_min(self):
        if hasattr(self, '_m_str_array_min'):
            return self._m_str_array_min if hasattr(self, '_m_str_array_min') else None

        self._m_str_array_min = min(self.str_array)
        return self._m_str_array_min if hasattr(self, '_m_str_array_min') else None

    @property
    def double_array_mid(self):
        if hasattr(self, '_m_double_array_mid'):
            return self._m_double_array_mid if hasattr(self, '_m_double_array_mid') else None

        self._m_double_array_mid = self.double_array[1]
        return self._m_double_array_mid if hasattr(self, '_m_double_array_mid') else None

    @property
    def str_array(self):
        if hasattr(self, '_m_str_array'):
            return self._m_str_array if hasattr(self, '_m_str_array') else None

        self._m_str_array = [u"un", u"deux", u"trois", u"quatre"]
        return self._m_str_array if hasattr(self, '_m_str_array') else None

    @property
    def double_array_size(self):
        if hasattr(self, '_m_double_array_size'):
            return self._m_double_array_size if hasattr(self, '_m_double_array_size') else None

        self._m_double_array_size = len(self.double_array)
        return self._m_double_array_size if hasattr(self, '_m_double_array_size') else None

    @property
    def str_array_first(self):
        if hasattr(self, '_m_str_array_first'):
            return self._m_str_array_first if hasattr(self, '_m_str_array_first') else None

        self._m_str_array_first = self.str_array[0]
        return self._m_str_array_first if hasattr(self, '_m_str_array_first') else None

    @property
    def str_array_last(self):
        if hasattr(self, '_m_str_array_last'):
            return self._m_str_array_last if hasattr(self, '_m_str_array_last') else None

        self._m_str_array_last = self.str_array[-1]
        return self._m_str_array_last if hasattr(self, '_m_str_array_last') else None

    @property
    def str_array_mid(self):
        if hasattr(self, '_m_str_array_mid'):
            return self._m_str_array_mid if hasattr(self, '_m_str_array_mid') else None

        self._m_str_array_mid = self.str_array[1]
        return self._m_str_array_mid if hasattr(self, '_m_str_array_mid') else None

    @property
    def double_array_last(self):
        if hasattr(self, '_m_double_array_last'):
            return self._m_double_array_last if hasattr(self, '_m_double_array_last') else None

        self._m_double_array_last = self.double_array[-1]
        return self._m_double_array_last if hasattr(self, '_m_double_array_last') else None

    @property
    def int_array_min(self):
        if hasattr(self, '_m_int_array_min'):
            return self._m_int_array_min if hasattr(self, '_m_int_array_min') else None

        self._m_int_array_min = min(self.int_array)
        return self._m_int_array_min if hasattr(self, '_m_int_array_min') else None

    @property
    def str_array_size(self):
        if hasattr(self, '_m_str_array_size'):
            return self._m_str_array_size if hasattr(self, '_m_str_array_size') else None

        self._m_str_array_size = len(self.str_array)
        return self._m_str_array_size if hasattr(self, '_m_str_array_size') else None

    @property
    def int_array_first(self):
        if hasattr(self, '_m_int_array_first'):
            return self._m_int_array_first if hasattr(self, '_m_int_array_first') else None

        self._m_int_array_first = self.int_array[0]
        return self._m_int_array_first if hasattr(self, '_m_int_array_first') else None

    @property
    def double_array_first(self):
        if hasattr(self, '_m_double_array_first'):
            return self._m_double_array_first if hasattr(self, '_m_double_array_first') else None

        self._m_double_array_first = self.double_array[0]
        return self._m_double_array_first if hasattr(self, '_m_double_array_first') else None

    @property
    def int_array_mid(self):
        if hasattr(self, '_m_int_array_mid'):
            return self._m_int_array_mid if hasattr(self, '_m_int_array_mid') else None

        self._m_int_array_mid = self.int_array[1]
        return self._m_int_array_mid if hasattr(self, '_m_int_array_mid') else None

    @property
    def double_array_min(self):
        if hasattr(self, '_m_double_array_min'):
            return self._m_double_array_min if hasattr(self, '_m_double_array_min') else None

        self._m_double_array_min = min(self.double_array)
        return self._m_double_array_min if hasattr(self, '_m_double_array_min') else None

    @property
    def int_array(self):
        if hasattr(self, '_m_int_array'):
            return self._m_int_array if hasattr(self, '_m_int_array') else None

        self._m_int_array = [10, 25, 50, 100, 200, 500, 1000]
        return self._m_int_array if hasattr(self, '_m_int_array') else None

    @property
    def int_array_last(self):
        if hasattr(self, '_m_int_array_last'):
            return self._m_int_array_last if hasattr(self, '_m_int_array_last') else None

        self._m_int_array_last = self.int_array[-1]
        return self._m_int_array_last if hasattr(self, '_m_int_array_last') else None



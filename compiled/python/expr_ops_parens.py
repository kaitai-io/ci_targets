# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprOpsParens(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def bool_and(self):
        if hasattr(self, '_m_bool_and'):
            return self._m_bool_and if hasattr(self, '_m_bool_and') else None

        self._m_bool_and = int( ((False) and (True)) )
        return self._m_bool_and if hasattr(self, '_m_bool_and') else None

    @property
    def str_0_to_4(self):
        if hasattr(self, '_m_str_0_to_4'):
            return self._m_str_0_to_4 if hasattr(self, '_m_str_0_to_4') else None

        self._m_str_0_to_4 = u"01234"
        return self._m_str_0_to_4 if hasattr(self, '_m_str_0_to_4') else None

    @property
    def bool_or(self):
        if hasattr(self, '_m_bool_or'):
            return self._m_bool_or if hasattr(self, '_m_bool_or') else None

        self._m_bool_or = int( ((not (False)) or (False)) )
        return self._m_bool_or if hasattr(self, '_m_bool_or') else None

    @property
    def f_e(self):
        if hasattr(self, '_m_f_e'):
            return self._m_f_e if hasattr(self, '_m_f_e') else None

        self._m_f_e = 2.72
        return self._m_f_e if hasattr(self, '_m_f_e') else None

    @property
    def f_sum_to_int(self):
        if hasattr(self, '_m_f_sum_to_int'):
            return self._m_f_sum_to_int if hasattr(self, '_m_f_sum_to_int') else None

        self._m_f_sum_to_int = int((self.f_2pi + self.f_e))
        return self._m_f_sum_to_int if hasattr(self, '_m_f_sum_to_int') else None

    @property
    def f_2pi(self):
        if hasattr(self, '_m_f_2pi'):
            return self._m_f_2pi if hasattr(self, '_m_f_2pi') else None

        self._m_f_2pi = 6.28
        return self._m_f_2pi if hasattr(self, '_m_f_2pi') else None

    @property
    def str_concat_rev(self):
        if hasattr(self, '_m_str_concat_rev'):
            return self._m_str_concat_rev if hasattr(self, '_m_str_concat_rev') else None

        self._m_str_concat_rev = (self.str_0_to_4 + self.str_5_to_9)[::-1]
        return self._m_str_concat_rev if hasattr(self, '_m_str_concat_rev') else None

    @property
    def i_m13(self):
        if hasattr(self, '_m_i_m13'):
            return self._m_i_m13 if hasattr(self, '_m_i_m13') else None

        self._m_i_m13 = -13
        return self._m_i_m13 if hasattr(self, '_m_i_m13') else None

    @property
    def str_concat_len(self):
        if hasattr(self, '_m_str_concat_len'):
            return self._m_str_concat_len if hasattr(self, '_m_str_concat_len') else None

        self._m_str_concat_len = len(self.str_0_to_4 + self.str_5_to_9)
        return self._m_str_concat_len if hasattr(self, '_m_str_concat_len') else None

    @property
    def str_concat_to_i(self):
        if hasattr(self, '_m_str_concat_to_i'):
            return self._m_str_concat_to_i if hasattr(self, '_m_str_concat_to_i') else None

        self._m_str_concat_to_i = int(self.str_0_to_4 + self.str_5_to_9)
        return self._m_str_concat_to_i if hasattr(self, '_m_str_concat_to_i') else None

    @property
    def i_42(self):
        if hasattr(self, '_m_i_42'):
            return self._m_i_42 if hasattr(self, '_m_i_42') else None

        self._m_i_42 = 42
        return self._m_i_42 if hasattr(self, '_m_i_42') else None

    @property
    def i_sum_to_str(self):
        if hasattr(self, '_m_i_sum_to_str'):
            return self._m_i_sum_to_str if hasattr(self, '_m_i_sum_to_str') else None

        self._m_i_sum_to_str = str((self.i_42 + self.i_m13))
        return self._m_i_sum_to_str if hasattr(self, '_m_i_sum_to_str') else None

    @property
    def bool_eq(self):
        if hasattr(self, '_m_bool_eq'):
            return self._m_bool_eq if hasattr(self, '_m_bool_eq') else None

        self._m_bool_eq = int(False == True)
        return self._m_bool_eq if hasattr(self, '_m_bool_eq') else None

    @property
    def str_5_to_9(self):
        if hasattr(self, '_m_str_5_to_9'):
            return self._m_str_5_to_9 if hasattr(self, '_m_str_5_to_9') else None

        self._m_str_5_to_9 = u"56789"
        return self._m_str_5_to_9 if hasattr(self, '_m_str_5_to_9') else None

    @property
    def str_concat_substr_2_to_7(self):
        if hasattr(self, '_m_str_concat_substr_2_to_7'):
            return self._m_str_concat_substr_2_to_7 if hasattr(self, '_m_str_concat_substr_2_to_7') else None

        self._m_str_concat_substr_2_to_7 = (self.str_0_to_4 + self.str_5_to_9)[2:7]
        return self._m_str_concat_substr_2_to_7 if hasattr(self, '_m_str_concat_substr_2_to_7') else None



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprOpsParens(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def bool_and(self):
        if hasattr(self, '_m_bool_and'):
            return self._m_bool_and

        self._m_bool_and = int( ((False) and (True)) )
        return getattr(self, '_m_bool_and', None)

    def _invalidate_bool_and(self):
        del self._m_bool_and
    @property
    def bool_eq(self):
        if hasattr(self, '_m_bool_eq'):
            return self._m_bool_eq

        self._m_bool_eq = int(False == True)
        return getattr(self, '_m_bool_eq', None)

    def _invalidate_bool_eq(self):
        del self._m_bool_eq
    @property
    def bool_or(self):
        if hasattr(self, '_m_bool_or'):
            return self._m_bool_or

        self._m_bool_or = int( (((not (False))) or (False)) )
        return getattr(self, '_m_bool_or', None)

    def _invalidate_bool_or(self):
        del self._m_bool_or
    @property
    def f_2pi(self):
        if hasattr(self, '_m_f_2pi'):
            return self._m_f_2pi

        self._m_f_2pi = 6.28
        return getattr(self, '_m_f_2pi', None)

    def _invalidate_f_2pi(self):
        del self._m_f_2pi
    @property
    def f_e(self):
        if hasattr(self, '_m_f_e'):
            return self._m_f_e

        self._m_f_e = 2.72
        return getattr(self, '_m_f_e', None)

    def _invalidate_f_e(self):
        del self._m_f_e
    @property
    def f_sum_to_int(self):
        if hasattr(self, '_m_f_sum_to_int'):
            return self._m_f_sum_to_int

        self._m_f_sum_to_int = int(self.f_2pi + self.f_e)
        return getattr(self, '_m_f_sum_to_int', None)

    def _invalidate_f_sum_to_int(self):
        del self._m_f_sum_to_int
    @property
    def i_42(self):
        if hasattr(self, '_m_i_42'):
            return self._m_i_42

        self._m_i_42 = 42
        return getattr(self, '_m_i_42', None)

    def _invalidate_i_42(self):
        del self._m_i_42
    @property
    def i_m13(self):
        if hasattr(self, '_m_i_m13'):
            return self._m_i_m13

        self._m_i_m13 = -13
        return getattr(self, '_m_i_m13', None)

    def _invalidate_i_m13(self):
        del self._m_i_m13
    @property
    def i_sum_to_str(self):
        if hasattr(self, '_m_i_sum_to_str'):
            return self._m_i_sum_to_str

        self._m_i_sum_to_str = str(self.i_42 + self.i_m13)
        return getattr(self, '_m_i_sum_to_str', None)

    def _invalidate_i_sum_to_str(self):
        del self._m_i_sum_to_str
    @property
    def str_0_to_4(self):
        if hasattr(self, '_m_str_0_to_4'):
            return self._m_str_0_to_4

        self._m_str_0_to_4 = "01234"
        return getattr(self, '_m_str_0_to_4', None)

    def _invalidate_str_0_to_4(self):
        del self._m_str_0_to_4
    @property
    def str_5_to_9(self):
        if hasattr(self, '_m_str_5_to_9'):
            return self._m_str_5_to_9

        self._m_str_5_to_9 = "56789"
        return getattr(self, '_m_str_5_to_9', None)

    def _invalidate_str_5_to_9(self):
        del self._m_str_5_to_9
    @property
    def str_concat_len(self):
        if hasattr(self, '_m_str_concat_len'):
            return self._m_str_concat_len

        self._m_str_concat_len = len(self.str_0_to_4 + self.str_5_to_9)
        return getattr(self, '_m_str_concat_len', None)

    def _invalidate_str_concat_len(self):
        del self._m_str_concat_len
    @property
    def str_concat_rev(self):
        if hasattr(self, '_m_str_concat_rev'):
            return self._m_str_concat_rev

        self._m_str_concat_rev = (self.str_0_to_4 + self.str_5_to_9)[::-1]
        return getattr(self, '_m_str_concat_rev', None)

    def _invalidate_str_concat_rev(self):
        del self._m_str_concat_rev
    @property
    def str_concat_substr_2_to_7(self):
        if hasattr(self, '_m_str_concat_substr_2_to_7'):
            return self._m_str_concat_substr_2_to_7

        self._m_str_concat_substr_2_to_7 = (self.str_0_to_4 + self.str_5_to_9)[2:7]
        return getattr(self, '_m_str_concat_substr_2_to_7', None)

    def _invalidate_str_concat_substr_2_to_7(self):
        del self._m_str_concat_substr_2_to_7
    @property
    def str_concat_to_i(self):
        if hasattr(self, '_m_str_concat_to_i'):
            return self._m_str_concat_to_i

        self._m_str_concat_to_i = int(self.str_0_to_4 + self.str_5_to_9)
        return getattr(self, '_m_str_concat_to_i', None)

    def _invalidate_str_concat_to_i(self):
        del self._m_str_concat_to_i


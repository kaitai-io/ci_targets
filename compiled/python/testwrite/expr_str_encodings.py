# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprStrEncodings(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode("ASCII")
        self.len_of_2 = self._io.read_u2le()
        self.str2 = (self._io.read_bytes(self.len_of_2)).decode("UTF-8")
        self.len_of_3 = self._io.read_u2le()
        self.str3 = (self._io.read_bytes(self.len_of_3)).decode("Shift_JIS")
        self.len_of_4 = self._io.read_u2le()
        self.str4 = (self._io.read_bytes(self.len_of_4)).decode("IBM437")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode("ASCII"))
        self._io.write_u2le(self.len_of_2)
        self._io.write_bytes((self.str2).encode("UTF-8"))
        self._io.write_u2le(self.len_of_3)
        self._io.write_bytes((self.str3).encode("Shift_JIS"))
        self._io.write_u2le(self.len_of_4)
        self._io.write_bytes((self.str4).encode("IBM437"))


    def _check(self):
        if len((self.str1).encode("ASCII")) != self.len_of_1:
            raise kaitaistruct.ConsistencyError("str1", self.len_of_1, len((self.str1).encode("ASCII")))
        if len((self.str2).encode("UTF-8")) != self.len_of_2:
            raise kaitaistruct.ConsistencyError("str2", self.len_of_2, len((self.str2).encode("UTF-8")))
        if len((self.str3).encode("Shift_JIS")) != self.len_of_3:
            raise kaitaistruct.ConsistencyError("str3", self.len_of_3, len((self.str3).encode("Shift_JIS")))
        if len((self.str4).encode("IBM437")) != self.len_of_4:
            raise kaitaistruct.ConsistencyError("str4", self.len_of_4, len((self.str4).encode("IBM437")))
        self._dirty = False

    @property
    def str1_eq(self):
        if hasattr(self, '_m_str1_eq'):
            return self._m_str1_eq

        self._m_str1_eq = self.str1 == "Some ASCII"
        return getattr(self, '_m_str1_eq', None)

    def _invalidate_str1_eq(self):
        del self._m_str1_eq
    @property
    def str2_eq(self):
        if hasattr(self, '_m_str2_eq'):
            return self._m_str2_eq

        self._m_str2_eq = self.str2 == "\u3053\u3093\u306b\u3061\u306f"
        return getattr(self, '_m_str2_eq', None)

    def _invalidate_str2_eq(self):
        del self._m_str2_eq
    @property
    def str3_eq(self):
        if hasattr(self, '_m_str3_eq'):
            return self._m_str3_eq

        self._m_str3_eq = self.str3 == "\u3053\u3093\u306b\u3061\u306f"
        return getattr(self, '_m_str3_eq', None)

    def _invalidate_str3_eq(self):
        del self._m_str3_eq
    @property
    def str3_eq_str2(self):
        if hasattr(self, '_m_str3_eq_str2'):
            return self._m_str3_eq_str2

        self._m_str3_eq_str2 = self.str3 == self.str2
        return getattr(self, '_m_str3_eq_str2', None)

    def _invalidate_str3_eq_str2(self):
        del self._m_str3_eq_str2
    @property
    def str4_eq(self):
        if hasattr(self, '_m_str4_eq'):
            return self._m_str4_eq

        self._m_str4_eq = self.str4 == "\u2591\u2592\u2593"
        return getattr(self, '_m_str4_eq', None)

    def _invalidate_str4_eq(self):
        del self._m_str4_eq
    @property
    def str4_gt_str_calc(self):
        if hasattr(self, '_m_str4_gt_str_calc'):
            return self._m_str4_gt_str_calc

        self._m_str4_gt_str_calc = self.str4 > "\u2524"
        return getattr(self, '_m_str4_gt_str_calc', None)

    def _invalidate_str4_gt_str_calc(self):
        del self._m_str4_gt_str_calc
    @property
    def str4_gt_str_from_bytes(self):
        if hasattr(self, '_m_str4_gt_str_from_bytes'):
            return self._m_str4_gt_str_from_bytes

        self._m_str4_gt_str_from_bytes = self.str4 > (b"\xB4").decode("IBM437")
        return getattr(self, '_m_str4_gt_str_from_bytes', None)

    def _invalidate_str4_gt_str_from_bytes(self):
        del self._m_str4_gt_str_from_bytes


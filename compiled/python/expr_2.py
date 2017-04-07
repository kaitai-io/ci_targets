# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Expr2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.str1 = self._root.ModStr(self._io, self, self._root)
        self.str2 = self._root.ModStr(self._io, self, self._root)

    class ModStr(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.len_orig = self._io.read_u2le()
            self.str = (self._io.read_bytes(self.len_mod)).decode(u"UTF-8")
            self._raw_rest = self._io.read_bytes(3)
            io = KaitaiStream(BytesIO(self._raw_rest))
            self.rest = self._root.Tuple(io, self, self._root)

        @property
        def len_mod(self):
            if hasattr(self, '_m_len_mod'):
                return self._m_len_mod if hasattr(self, '_m_len_mod') else None

            self._m_len_mod = (self.len_orig - 3)
            return self._m_len_mod if hasattr(self, '_m_len_mod') else None

        @property
        def char5(self):
            if hasattr(self, '_m_char5'):
                return self._m_char5 if hasattr(self, '_m_char5') else None

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_char5 = (self._io.read_bytes(1)).decode(u"ASCII")
            self._io.seek(_pos)
            return self._m_char5 if hasattr(self, '_m_char5') else None

        @property
        def tuple5(self):
            if hasattr(self, '_m_tuple5'):
                return self._m_tuple5 if hasattr(self, '_m_tuple5') else None

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_tuple5 = self._root.Tuple(self._io, self, self._root)
            self._io.seek(_pos)
            return self._m_tuple5 if hasattr(self, '_m_tuple5') else None


    class Tuple(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.byte0 = self._io.read_u1()
            self.byte1 = self._io.read_u1()
            self.byte2 = self._io.read_u1()

        @property
        def avg(self):
            if hasattr(self, '_m_avg'):
                return self._m_avg if hasattr(self, '_m_avg') else None

            self._m_avg = (self.byte1 + self.byte2) // 2
            return self._m_avg if hasattr(self, '_m_avg') else None


    @property
    def str1_len_mod(self):
        if hasattr(self, '_m_str1_len_mod'):
            return self._m_str1_len_mod if hasattr(self, '_m_str1_len_mod') else None

        self._m_str1_len_mod = self.str1.len_mod
        return self._m_str1_len_mod if hasattr(self, '_m_str1_len_mod') else None

    @property
    def str1_len(self):
        if hasattr(self, '_m_str1_len'):
            return self._m_str1_len if hasattr(self, '_m_str1_len') else None

        self._m_str1_len = len(self.str1.str)
        return self._m_str1_len if hasattr(self, '_m_str1_len') else None

    @property
    def str1_tuple5(self):
        if hasattr(self, '_m_str1_tuple5'):
            return self._m_str1_tuple5 if hasattr(self, '_m_str1_tuple5') else None

        self._m_str1_tuple5 = self.str1.tuple5
        return self._m_str1_tuple5 if hasattr(self, '_m_str1_tuple5') else None

    @property
    def str2_tuple5(self):
        if hasattr(self, '_m_str2_tuple5'):
            return self._m_str2_tuple5 if hasattr(self, '_m_str2_tuple5') else None

        self._m_str2_tuple5 = self.str2.tuple5
        return self._m_str2_tuple5 if hasattr(self, '_m_str2_tuple5') else None

    @property
    def str1_avg(self):
        if hasattr(self, '_m_str1_avg'):
            return self._m_str1_avg if hasattr(self, '_m_str1_avg') else None

        self._m_str1_avg = self.str1.rest.avg
        return self._m_str1_avg if hasattr(self, '_m_str1_avg') else None

    @property
    def str1_byte1(self):
        if hasattr(self, '_m_str1_byte1'):
            return self._m_str1_byte1 if hasattr(self, '_m_str1_byte1') else None

        self._m_str1_byte1 = self.str1.rest.byte1
        return self._m_str1_byte1 if hasattr(self, '_m_str1_byte1') else None

    @property
    def str1_char5(self):
        if hasattr(self, '_m_str1_char5'):
            return self._m_str1_char5 if hasattr(self, '_m_str1_char5') else None

        self._m_str1_char5 = self.str1.char5
        return self._m_str1_char5 if hasattr(self, '_m_str1_char5') else None



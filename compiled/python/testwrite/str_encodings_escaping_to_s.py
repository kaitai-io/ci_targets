# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEncodingsEscapingToS(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrEncodingsEscapingToS, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1_raw = self._io.read_bytes(self.len_of_1)
        self.len_of_2 = self._io.read_u2le()
        self.str2_raw = self._io.read_bytes(self.len_of_2)
        self.len_of_3 = self._io.read_u2le()
        self.str3_raw = self._io.read_bytes(self.len_of_3)
        self.len_of_4 = self._io.read_u2le()
        self.str4_raw = self._io.read_bytes(self.len_of_4)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(StrEncodingsEscapingToS, self)._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes(self.str1_raw)
        self._io.write_u2le(self.len_of_2)
        self._io.write_bytes(self.str2_raw)
        self._io.write_u2le(self.len_of_3)
        self._io.write_bytes(self.str3_raw)
        self._io.write_u2le(self.len_of_4)
        self._io.write_bytes(self.str4_raw)


    def _check(self):
        if len(self.str1_raw) != self.len_of_1:
            raise kaitaistruct.ConsistencyError(u"str1_raw", len(self.str1_raw), self.len_of_1)
        if len(self.str2_raw) != self.len_of_2:
            raise kaitaistruct.ConsistencyError(u"str2_raw", len(self.str2_raw), self.len_of_2)
        if len(self.str3_raw) != self.len_of_3:
            raise kaitaistruct.ConsistencyError(u"str3_raw", len(self.str3_raw), self.len_of_3)
        if len(self.str4_raw) != self.len_of_4:
            raise kaitaistruct.ConsistencyError(u"str4_raw", len(self.str4_raw), self.len_of_4)
        self._dirty = False

    @property
    def str1(self):
        if hasattr(self, '_m_str1'):
            return self._m_str1

        self._m_str1 = (self.str1_raw).decode(u"ASCII\\\\x")
        return getattr(self, '_m_str1', None)

    def _invalidate_str1(self):
        del self._m_str1
    @property
    def str2(self):
        if hasattr(self, '_m_str2'):
            return self._m_str2

        self._m_str2 = (self.str2_raw).decode(u"UTF-8\\'x")
        return getattr(self, '_m_str2', None)

    def _invalidate_str2(self):
        del self._m_str2
    @property
    def str3(self):
        if hasattr(self, '_m_str3'):
            return self._m_str3

        self._m_str3 = (self.str3_raw).decode(u"SJIS\\\"x")
        return getattr(self, '_m_str3', None)

    def _invalidate_str3(self):
        del self._m_str3
    @property
    def str4(self):
        if hasattr(self, '_m_str4'):
            return self._m_str4

        self._m_str4 = (self.str4_raw).decode(u"IBM437\\nx")
        return getattr(self, '_m_str4', None)

    def _invalidate_str4(self):
        del self._m_str4


# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEncodingsEscapingToS(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1_raw = self._io.read_bytes(self.len_of_1)
        self.len_of_2 = self._io.read_u2le()
        self.str2_raw = self._io.read_bytes(self.len_of_2)
        self.len_of_3 = self._io.read_u2le()
        self.str3_raw = self._io.read_bytes(self.len_of_3)
        self.len_of_4 = self._io.read_u2le()
        self.str4_raw = self._io.read_bytes(self.len_of_4)


    def _fetch_instances(self):
        pass

    @property
    def str1(self):
        if hasattr(self, '_m_str1'):
            return self._m_str1

        self._m_str1 = (self.str1_raw).decode("ASCII\\\\x")
        return getattr(self, '_m_str1', None)

    @property
    def str2(self):
        if hasattr(self, '_m_str2'):
            return self._m_str2

        self._m_str2 = (self.str2_raw).decode("UTF-8\\'x")
        return getattr(self, '_m_str2', None)

    @property
    def str3(self):
        if hasattr(self, '_m_str3'):
            return self._m_str3

        self._m_str3 = (self.str3_raw).decode("SJIS\\\"x")
        return getattr(self, '_m_str3', None)

    @property
    def str4(self):
        if hasattr(self, '_m_str4'):
            return self._m_str4

        self._m_str4 = (self.str4_raw).decode("IBM437\\nx")
        return getattr(self, '_m_str4', None)



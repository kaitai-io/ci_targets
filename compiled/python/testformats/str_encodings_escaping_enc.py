# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEncodingsEscapingEnc(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        _io_str1 = self._io.substream(self.len_of_1)
        self.str1 = StrEncodingsEscapingEnc.Str1Wrapper(_io_str1, self, self._root)
        self.len_of_2 = self._io.read_u2le()
        _io_str2 = self._io.substream(self.len_of_2)
        self.str2 = StrEncodingsEscapingEnc.Str2Wrapper(_io_str2, self, self._root)
        self.len_of_3 = self._io.read_u2le()
        _io_str3 = self._io.substream(self.len_of_3)
        self.str3 = StrEncodingsEscapingEnc.Str3Wrapper(_io_str3, self, self._root)
        self.len_of_4 = self._io.read_u2le()
        _io_str4 = self._io.substream(self.len_of_4)
        self.str4 = StrEncodingsEscapingEnc.Str4Wrapper(_io_str4, self, self._root)


    def _fetch_instances(self):
        pass
        self.str1._fetch_instances()
        self.str2._fetch_instances()
        self.str3._fetch_instances()
        self.str4._fetch_instances()

    class Str1Wrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass


        @property
        def v(self):
            if hasattr(self, '_m_v'):
                return self._m_v

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode("ASCII\\\\x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)


    class Str2Wrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass


        @property
        def v(self):
            if hasattr(self, '_m_v'):
                return self._m_v

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode("UTF-8\\'x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)


    class Str3Wrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass


        @property
        def v(self):
            if hasattr(self, '_m_v'):
                return self._m_v

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode("SJIS\\\"x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)


    class Str4Wrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass


        @property
        def v(self):
            if hasattr(self, '_m_v'):
                return self._m_v

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode("IBM437\\nx")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)




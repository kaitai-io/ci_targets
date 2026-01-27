# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEosPadTermEmpty(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_str_pad = self._io.read_bytes(20)
        _io__raw_str_pad = KaitaiStream(BytesIO(self._raw_str_pad))
        self.str_pad = StrEosPadTermEmpty.StrPadType(_io__raw_str_pad, self, self._root)
        self._raw_str_term = self._io.read_bytes(20)
        _io__raw_str_term = KaitaiStream(BytesIO(self._raw_str_term))
        self.str_term = StrEosPadTermEmpty.StrTermType(_io__raw_str_term, self, self._root)
        self._raw_str_term_and_pad = self._io.read_bytes(20)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(self._raw_str_term_and_pad))
        self.str_term_and_pad = StrEosPadTermEmpty.StrTermAndPadType(_io__raw_str_term_and_pad, self, self._root)
        self._raw_str_term_include = self._io.read_bytes(20)
        _io__raw_str_term_include = KaitaiStream(BytesIO(self._raw_str_term_include))
        self.str_term_include = StrEosPadTermEmpty.StrTermIncludeType(_io__raw_str_term_include, self, self._root)


    def _fetch_instances(self):
        pass
        self.str_pad._fetch_instances()
        self.str_term._fetch_instances()
        self.str_term_and_pad._fetch_instances()
        self.str_term_include._fetch_instances()

    class StrPadType(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 64)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class StrTermAndPadType(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 43), 64, False)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class StrTermIncludeType(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, True)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class StrTermType(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, False)).decode("UTF-8")


        def _fetch_instances(self):
            pass




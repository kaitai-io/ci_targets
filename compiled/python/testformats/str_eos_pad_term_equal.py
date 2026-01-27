# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEosPadTermEqual(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_s1 = self._io.read_bytes(20)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = StrEosPadTermEqual.S1Type(_io__raw_s1, self, self._root)
        self._raw_s2 = self._io.read_bytes(20)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = StrEosPadTermEqual.S2Type(_io__raw_s2, self, self._root)
        self._raw_s3 = self._io.read_bytes(20)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = StrEosPadTermEqual.S3Type(_io__raw_s3, self, self._root)
        self._raw_s4 = self._io.read_bytes(20)
        _io__raw_s4 = KaitaiStream(BytesIO(self._raw_s4))
        self.s4 = StrEosPadTermEqual.S4Type(_io__raw_s4, self, self._root)


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()
        self.s4._fetch_instances()

    class S1Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, False)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class S2Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 43), 64, True)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class S3Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 43, False)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class S4Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 46, True)).decode("UTF-8")


        def _fetch_instances(self):
            pass




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsCall(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.buf1 = ParamsCall.MyStr1(5, self._io, self, self._root)
        self.buf2 = ParamsCall.MyStr2(2 + 3, True, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.buf1._fetch_instances()
        self.buf2._fetch_instances()

    class MyStr1(KaitaiStruct):
        def __init__(self, len, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.len = len
            self._read()

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode("UTF-8")


        def _fetch_instances(self):
            pass


    class MyStr2(KaitaiStruct):
        def __init__(self, len, has_trailer, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.len = len
            self.has_trailer = has_trailer
            self._read()

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode("UTF-8")
            if self.has_trailer:
                pass
                self.trailer = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self.has_trailer:
                pass





# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsCallExtraParens(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.buf1 = ParamsCallExtraParens.MyStr1(5, self._io, self, self._root)
        self.buf1._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.buf1._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.buf1._write__seq(self._io)


    def _check(self):
        if self.buf1._root != self._root:
            raise kaitaistruct.ConsistencyError("buf1", self._root, self.buf1._root)
        if self.buf1._parent != self:
            raise kaitaistruct.ConsistencyError("buf1", self, self.buf1._parent)
        if self.buf1.len != 5:
            raise kaitaistruct.ConsistencyError("buf1", 5, self.buf1.len)
        self._dirty = False

    class MyStr1(ReadWriteKaitaiStruct):
        def __init__(self, len, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.len = len

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode("UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes((self.body).encode("UTF-8"))


        def _check(self):
            if len((self.body).encode("UTF-8")) != self.len:
                raise kaitaistruct.ConsistencyError("body", self.len, len((self.body).encode("UTF-8")))
            self._dirty = False




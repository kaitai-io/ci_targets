# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsDef(ReadWriteKaitaiStruct):
    def __init__(self, len, has_trailer, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.len = len
        self.has_trailer = has_trailer

    def _read(self):
        self.buf = (self._io.read_bytes(self.len)).decode("UTF-8")
        if self.has_trailer:
            pass
            self.trailer = self._io.read_u1()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if self.has_trailer:
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes((self.buf).encode("UTF-8"))
        if self.has_trailer:
            pass
            self._io.write_u1(self.trailer)



    def _check(self):
        if len((self.buf).encode("UTF-8")) != self.len:
            raise kaitaistruct.ConsistencyError("buf", self.len, len((self.buf).encode("UTF-8")))
        if self.has_trailer:
            pass

        self._dirty = False



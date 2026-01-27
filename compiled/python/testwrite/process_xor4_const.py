# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessXor4Const(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.key = self._io.read_bytes(4)
        self._raw_buf = self._io.read_bytes_full()
        self.buf = KaitaiStream.process_xor_many(self._raw_buf, b"\xEC\xBB\xA3\x14")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes(self.key)
        self._raw_buf = KaitaiStream.process_xor_many(self.buf, b"\xEC\xBB\xA3\x14")
        self._io.write_bytes(self._raw_buf)
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError("buf", 0, self._io.size() - self._io.pos())


    def _check(self):
        if len(self.key) != 4:
            raise kaitaistruct.ConsistencyError("key", 4, len(self.key))
        self._dirty = False



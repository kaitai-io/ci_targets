# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessXorConst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.key = self._io.read_u1()
        self._raw_buf = self._io.read_bytes_full()
        self.buf = KaitaiStream.process_xor_one(self._raw_buf, 255)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ProcessXorConst, self)._write__seq(io)
        self._io.write_u1(self.key)
        self._raw_buf = KaitaiStream.process_xor_one(self.buf, 255)
        self._io.write_bytes(self._raw_buf)
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"buf", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessRotate(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_buf1 = self._io.read_bytes(5)
        self.buf1 = KaitaiStream.process_rotate_left(self._raw_buf1, 3, 1)
        self._raw_buf2 = self._io.read_bytes(5)
        self.buf2 = KaitaiStream.process_rotate_left(self._raw_buf2, 8 - (3), 1)
        self.key = self._io.read_u1()
        self._raw_buf3 = self._io.read_bytes(5)
        self.buf3 = KaitaiStream.process_rotate_left(self._raw_buf3, self.key, 1)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ProcessRotate, self)._write__seq(io)
        self._raw_buf1 = KaitaiStream.process_rotate_left(self.buf1, 8 - (3), 1)
        if len(self._raw_buf1) != 5:
            raise kaitaistruct.ConsistencyError(u"buf1", len(self._raw_buf1), 5)
        self._io.write_bytes(self._raw_buf1)
        self._raw_buf2 = KaitaiStream.process_rotate_left(self.buf2, 3, 1)
        if len(self._raw_buf2) != 5:
            raise kaitaistruct.ConsistencyError(u"buf2", len(self._raw_buf2), 5)
        self._io.write_bytes(self._raw_buf2)
        self._io.write_u1(self.key)
        self._raw_buf3 = KaitaiStream.process_rotate_left(self.buf3, 8 - (self.key), 1)
        if len(self._raw_buf3) != 5:
            raise kaitaistruct.ConsistencyError(u"buf3", len(self._raw_buf3), 5)
        self._io.write_bytes(self._raw_buf3)


    def _check(self):
        pass



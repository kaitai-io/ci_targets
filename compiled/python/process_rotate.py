# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessRotate(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_buf1 = self._io.read_bytes(5)
        self.buf1 = KaitaiStream.process_rotate_left(self._raw_buf1, 3, 1)
        self._raw_buf2 = self._io.read_bytes(5)
        self.buf2 = KaitaiStream.process_rotate_left(self._raw_buf2, 8 - (3), 1)
        self.key = self._io.read_u1()
        self._raw_buf3 = self._io.read_bytes(5)
        self.buf3 = KaitaiStream.process_rotate_left(self._raw_buf3, self.key, 1)



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrPadTermEqual(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s1 = (KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)).decode(u"UTF-8")
        self.s2 = (KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, True)).decode(u"UTF-8")
        self.s3 = (KaitaiStream.bytes_terminate(self._io.read_bytes(20), 43, False)).decode(u"UTF-8")
        self.s4 = (KaitaiStream.bytes_terminate(self._io.read_bytes(20), 46, True)).decode(u"UTF-8")


    def _fetch_instances(self):
        pass



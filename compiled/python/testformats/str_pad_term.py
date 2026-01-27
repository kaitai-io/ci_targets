# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrPadTerm(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.str_pad = (KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 64)).decode("UTF-8")
        self.str_term = (KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)).decode("UTF-8")
        self.str_term_and_pad = (KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, False)).decode("UTF-8")
        self.str_term_include = (KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, True)).decode("UTF-8")


    def _fetch_instances(self):
        pass



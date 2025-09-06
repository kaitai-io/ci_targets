# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessBytesPadTerm(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ProcessBytesPadTerm, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_str_pad = KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 64)
        self.str_pad = KaitaiStream.process_xor_one(self._raw_str_pad, 21)
        self._raw_str_term = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.str_term = KaitaiStream.process_xor_one(self._raw_str_term, 21)
        self._raw_str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, False)
        self.str_term_and_pad = KaitaiStream.process_xor_one(self._raw_str_term_and_pad, 21)
        self._raw_str_term_include = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, True)
        self.str_term_include = KaitaiStream.process_xor_one(self._raw_str_term_include, 21)


    def _fetch_instances(self):
        pass



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNStrz(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.qty = self._io.read_u4le()
        self.lines = []
        for i in range(self.qty):
            self.lines.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))



    def _fetch_instances(self):
        pass
        for i in range(len(self.lines)):
            pass




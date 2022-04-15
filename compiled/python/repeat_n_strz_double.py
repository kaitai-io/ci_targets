# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNStrzDouble(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.qty = self._io.read_u4le()
        self.lines1 = []
        for i in range(self.qty // 2):
            self.lines1.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))

        self.lines2 = []
        for i in range(self.qty // 2):
            self.lines2.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))




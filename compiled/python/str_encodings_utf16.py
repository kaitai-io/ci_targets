# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEncodingsUtf16(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.len_be = self._io.read_u4le()
        self._raw_be_bom_removed = self._io.read_bytes(self.len_be)
        _io__raw_be_bom_removed = KaitaiStream(BytesIO(self._raw_be_bom_removed))
        self.be_bom_removed = StrEncodingsUtf16.StrBeBomRemoved(_io__raw_be_bom_removed, self, self._root)
        self.len_le = self._io.read_u4le()
        self._raw_le_bom_removed = self._io.read_bytes(self.len_le)
        _io__raw_le_bom_removed = KaitaiStream(BytesIO(self._raw_le_bom_removed))
        self.le_bom_removed = StrEncodingsUtf16.StrLeBomRemoved(_io__raw_le_bom_removed, self, self._root)

    class StrBeBomRemoved(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.bom = self._io.read_u2be()
            self.str = (self._io.read_bytes_full()).decode(u"UTF-16BE")


    class StrLeBomRemoved(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.bom = self._io.read_u2le()
            self.str = (self._io.read_bytes_full()).decode(u"UTF-16LE")




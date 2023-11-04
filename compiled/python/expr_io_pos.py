# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoPos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_substream1 = self._io.read_bytes(16)
        _io__raw_substream1 = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = ExprIoPos.AllPlusNumber(_io__raw_substream1, self, self._root)
        self._raw_substream2 = self._io.read_bytes(14)
        _io__raw_substream2 = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = ExprIoPos.AllPlusNumber(_io__raw_substream2, self, self._root)

    class AllPlusNumber(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.my_str = (self._io.read_bytes_term(0, False, True, True)).decode("UTF-8")
            self.body = self._io.read_bytes(((self._io.size() - self._io.pos()) - 2))
            self.number = self._io.read_u2le()




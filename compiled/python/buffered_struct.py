# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class BufferedStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.len1 = self._io.read_u4le()
        self._raw_block1 = self._io.read_bytes(self.len1)
        _io__raw_block1 = KaitaiStream(BytesIO(self._raw_block1))
        self.block1 = BufferedStruct.Block(_io__raw_block1, self, self._root)
        self.len2 = self._io.read_u4le()
        self._raw_block2 = self._io.read_bytes(self.len2)
        _io__raw_block2 = KaitaiStream(BytesIO(self._raw_block2))
        self.block2 = BufferedStruct.Block(_io__raw_block2, self, self._root)
        self.finisher = self._io.read_u4le()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.number1 = self._io.read_u4le()
            self.number2 = self._io.read_u4le()




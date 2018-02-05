# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class IndexToParamEos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.qty = self._io.read_u4le()
        self.sizes = [None] * (self.qty)
        for i in range(self.qty):
            self.sizes[i] = self._io.read_u4le()

        self.blocks = []
        i = 0
        while not self._io.is_eof():
            self.blocks.append(self._root.Block(i, self._io, self, self._root))
            i += 1


    class Block(KaitaiStruct):
        def __init__(self, idx, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.idx = idx
            self._read()

        def _read(self):
            self.buf = (self._io.read_bytes(self._root.sizes[self.idx])).decode(u"ASCII")




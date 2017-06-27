# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class IndexSizes(KaitaiStruct):
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

        self.bufs = [None] * (self.qty)
        for i in range(self.qty):
            self.bufs[i] = (self._io.read_bytes(self.sizes[i])).decode(u"ASCII")




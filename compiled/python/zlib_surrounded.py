# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import zlib


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ZlibSurrounded(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.pre = self._io.read_bytes(4)
        self._raw__raw_zlib = self._io.read_bytes(12)
        self._raw_zlib = zlib.decompress(self._raw__raw_zlib)
        _io__raw_zlib = KaitaiStream(BytesIO(self._raw_zlib))
        self.zlib = ZlibSurrounded.Inflated(_io__raw_zlib, self, self._root)
        self.post = self._io.read_bytes(4)

    class Inflated(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.inflated = self._io.read_s4le()




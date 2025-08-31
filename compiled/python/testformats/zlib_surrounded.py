# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import zlib


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ZlibSurrounded(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.pre = self._io.read_bytes(4)
        self._raw__raw_zlib = self._io.read_bytes(12)
        self._raw_zlib = zlib.decompress(self._raw__raw_zlib)
        _io__raw_zlib = KaitaiStream(BytesIO(self._raw_zlib))
        self.zlib = ZlibSurrounded.Inflated(_io__raw_zlib, self, self._root)
        self.post = self._io.read_bytes(4)


    def _fetch_instances(self):
        pass
        self.zlib._fetch_instances()

    class Inflated(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.num = self._io.read_s4le()


        def _fetch_instances(self):
            pass




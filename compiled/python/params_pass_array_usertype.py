# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayUsertype(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.blocks = [None] * (2)
        for i in range(2):
            self.blocks[i] = ParamsPassArrayUsertype.Block(self._io, self, self._root)

        self.pass_blocks = ParamsPassArrayUsertype.ParamType(self.blocks, self._io, self, self._root)

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()


    class ParamType(KaitaiStruct):
        def __init__(self, bar, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.bar = bar
            self._read()

        def _read(self):
            self.one = self._io.read_bytes(self.bar[0].foo)
            self.two = self._io.read_bytes(self.bar[1].foo)




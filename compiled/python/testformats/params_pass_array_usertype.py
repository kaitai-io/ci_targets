# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayUsertype(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.blocks = []
        for i in range(2):
            self.blocks.append(ParamsPassArrayUsertype.Block(self._io, self, self._root))

        self.pass_blocks = ParamsPassArrayUsertype.ParamType(self.blocks, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()

        self.pass_blocks._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class ParamType(KaitaiStruct):
        def __init__(self, bar, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.bar = bar
            self._read()

        def _read(self):
            self.one = self._io.read_bytes(self.bar[0].foo)
            self.two = self._io.read_bytes(self.bar[1].foo)


        def _fetch_instances(self):
            pass




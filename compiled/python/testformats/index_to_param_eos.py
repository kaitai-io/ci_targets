# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IndexToParamEos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.qty = self._io.read_u4le()
        self.sizes = []
        for i in range(self.qty):
            self.sizes.append(self._io.read_u4le())

        self.blocks = []
        i = 0
        while not self._io.is_eof():
            self.blocks.append(IndexToParamEos.Block(i, self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.sizes)):
            pass

        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()


    class Block(KaitaiStruct):
        def __init__(self, idx, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.idx = idx
            self._read()

        def _read(self):
            self.buf = (self._io.read_bytes(self._root.sizes[self.idx])).decode("ASCII")


        def _fetch_instances(self):
            pass




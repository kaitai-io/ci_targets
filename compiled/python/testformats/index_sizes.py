# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IndexSizes(KaitaiStruct):
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

        self.bufs = []
        for i in range(self.qty):
            self.bufs.append((self._io.read_bytes(self.sizes[i])).decode("ASCII"))



    def _fetch_instances(self):
        pass
        for i in range(len(self.sizes)):
            pass

        for i in range(len(self.bufs)):
            pass




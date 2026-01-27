# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IndexSizes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.sizes = []
        for i in range(self.qty):
            self.sizes.append(self._io.read_u4le())

        self.bufs = []
        for i in range(self.qty):
            self.bufs.append((self._io.read_bytes(self.sizes[i])).decode("ASCII"))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.sizes)):
            pass

        for i in range(len(self.bufs)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.sizes)):
            pass
            self._io.write_u4le(self.sizes[i])

        for i in range(len(self.bufs)):
            pass
            self._io.write_bytes((self.bufs[i]).encode("ASCII"))



    def _check(self):
        if len(self.sizes) != self.qty:
            raise kaitaistruct.ConsistencyError("sizes", self.qty, len(self.sizes))
        for i in range(len(self.sizes)):
            pass

        if len(self.bufs) != self.qty:
            raise kaitaistruct.ConsistencyError("bufs", self.qty, len(self.bufs))
        for i in range(len(self.bufs)):
            pass
            if len((self.bufs[i]).encode("ASCII")) != self.sizes[i]:
                raise kaitaistruct.ConsistencyError("bufs", self.sizes[i], len((self.bufs[i]).encode("ASCII")))

        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IndexToParamUntil(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.sizes = []
        for i in range(self.qty):
            self.sizes.append(self._io.read_u4le())

        self.blocks = []
        i = 0
        while True:
            _t_blocks = IndexToParamUntil.Block(i, self._io, self, self._root)
            try:
                _t_blocks._read()
            finally:
                _ = _t_blocks
                self.blocks.append(_)
            if self._io.is_eof():
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.sizes)):
            pass

        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.sizes)):
            pass
            self._io.write_u4le(self.sizes[i])

        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._write__seq(self._io)
            _ = self.blocks[i]
            if self._io.is_eof() != (i == len(self.blocks) - 1):
                raise kaitaistruct.ConsistencyError("blocks", i == len(self.blocks) - 1, self._io.is_eof())



    def _check(self):
        if len(self.sizes) != self.qty:
            raise kaitaistruct.ConsistencyError("sizes", self.qty, len(self.sizes))
        for i in range(len(self.sizes)):
            pass

        if len(self.blocks) == 0:
            raise kaitaistruct.ConsistencyError("blocks", 0, len(self.blocks))
        for i in range(len(self.blocks)):
            pass
            if self.blocks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("blocks", self._root, self.blocks[i]._root)
            if self.blocks[i]._parent != self:
                raise kaitaistruct.ConsistencyError("blocks", self, self.blocks[i]._parent)
            if self.blocks[i].idx != i:
                raise kaitaistruct.ConsistencyError("blocks", i, self.blocks[i].idx)

        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, idx, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.idx = idx

        def _read(self):
            self.buf = (self._io.read_bytes(self._root.sizes[self.idx])).decode("ASCII")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes((self.buf).encode("ASCII"))


        def _check(self):
            if len((self.buf).encode("ASCII")) != self._root.sizes[self.idx]:
                raise kaitaistruct.ConsistencyError("buf", self._root.sizes[self.idx], len((self.buf).encode("ASCII")))
            self._dirty = False




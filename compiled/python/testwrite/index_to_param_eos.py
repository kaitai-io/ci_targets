# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IndexToParamEos(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(IndexToParamEos, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.sizes = []
        for i in range(self.qty):
            self.sizes.append(self._io.read_u4le())

        self.blocks = []
        i = 0
        while not self._io.is_eof():
            _t_blocks = IndexToParamEos.Block(i, self._io, self, self._root)
            try:
                _t_blocks._read()
            finally:
                self.blocks.append(_t_blocks)
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
        super(IndexToParamEos, self)._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.sizes)):
            pass
            self._io.write_u4le(self.sizes[i])

        for i in range(len(self.blocks)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"blocks", 0, self._io.size() - self._io.pos())
            self.blocks[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"blocks", 0, self._io.size() - self._io.pos())


    def _check(self):
        if len(self.sizes) != self.qty:
            raise kaitaistruct.ConsistencyError(u"sizes", self.qty, len(self.sizes))
        for i in range(len(self.sizes)):
            pass

        for i in range(len(self.blocks)):
            pass
            if self.blocks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"blocks", self._root, self.blocks[i]._root)
            if self.blocks[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"blocks", self, self.blocks[i]._parent)
            if self.blocks[i].idx != i:
                raise kaitaistruct.ConsistencyError(u"blocks", i, self.blocks[i].idx)

        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, idx, _io=None, _parent=None, _root=None):
            super(IndexToParamEos.Block, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self.idx = idx

        def _read(self):
            self.buf = (self._io.read_bytes(self._root.sizes[self.idx])).decode(u"ASCII")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(IndexToParamEos.Block, self)._write__seq(io)
            self._io.write_bytes((self.buf).encode(u"ASCII"))


        def _check(self):
            if len((self.buf).encode(u"ASCII")) != self._root.sizes[self.idx]:
                raise kaitaistruct.ConsistencyError(u"buf", self._root.sizes[self.idx], len((self.buf).encode(u"ASCII")))
            self._dirty = False




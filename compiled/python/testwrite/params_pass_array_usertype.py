# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassArrayUsertype(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.blocks = []
        for i in range(2):
            _t_blocks = ParamsPassArrayUsertype.Block(self._io, self, self._root)
            try:
                _t_blocks._read()
            finally:
                self.blocks.append(_t_blocks)

        self.pass_blocks = ParamsPassArrayUsertype.ParamType(self.blocks, self._io, self, self._root)
        self.pass_blocks._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()

        self.pass_blocks._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._write__seq(self._io)

        self.pass_blocks._write__seq(self._io)


    def _check(self):
        if len(self.blocks) != 2:
            raise kaitaistruct.ConsistencyError("blocks", 2, len(self.blocks))
        for i in range(len(self.blocks)):
            pass
            if self.blocks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("blocks", self._root, self.blocks[i]._root)
            if self.blocks[i]._parent != self:
                raise kaitaistruct.ConsistencyError("blocks", self, self.blocks[i]._parent)

        if self.pass_blocks._root != self._root:
            raise kaitaistruct.ConsistencyError("pass_blocks", self._root, self.pass_blocks._root)
        if self.pass_blocks._parent != self:
            raise kaitaistruct.ConsistencyError("pass_blocks", self, self.pass_blocks._parent)
        if self.pass_blocks.bar != self.blocks:
            raise kaitaistruct.ConsistencyError("pass_blocks", self.blocks, self.pass_blocks.bar)
        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.foo)


        def _check(self):
            self._dirty = False


    class ParamType(ReadWriteKaitaiStruct):
        def __init__(self, bar, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.bar = bar

        def _read(self):
            self.one = self._io.read_bytes(self.bar[0].foo)
            self.two = self._io.read_bytes(self.bar[1].foo)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.one)
            self._io.write_bytes(self.two)


        def _check(self):
            if len(self.one) != self.bar[0].foo:
                raise kaitaistruct.ConsistencyError("one", self.bar[0].foo, len(self.one))
            if len(self.two) != self.bar[1].foo:
                raise kaitaistruct.ConsistencyError("two", self.bar[1].foo, len(self.two))
            self._dirty = False




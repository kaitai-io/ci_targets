# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessRepeatUsertypeDynargXor(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_blocks = []
        self._raw__raw_blocks = []
        self.blocks = []
        for i in range(2):
            self._raw__raw_blocks.append(self._io.read_bytes(5))
            self._raw_blocks.append(KaitaiStream.process_xor_one(self._raw__raw_blocks[i], 155 ^ (i << 4 | self._io.pos())))
            _io__raw_blocks = KaitaiStream(BytesIO(self._raw_blocks[i]))
            _t_blocks = ProcessRepeatUsertypeDynargXor.Block(_io__raw_blocks, self, self._root)
            try:
                _t_blocks._read()
            finally:
                self.blocks.append(_t_blocks)

        self.blocks_b = ProcessRepeatUsertypeDynargXor.BlocksBWrapper(self._io, self, self._root)
        self.blocks_b._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()

        self.blocks_b._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._raw_blocks = []
        self._raw__raw_blocks = []
        for i in range(len(self.blocks)):
            pass
            _io__raw_blocks = KaitaiStream(BytesIO(bytes(5)))
            self._io.add_child_stream(_io__raw_blocks)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (5))
            _process_val = 155 ^ (i << 4 | self._io.pos())
            def handler(parent, _io__raw_blocks=_io__raw_blocks, i=i, _process_val=_process_val):
                self._raw_blocks.append(_io__raw_blocks.to_byte_array())
                self._raw__raw_blocks.append(KaitaiStream.process_xor_one(self._raw_blocks[i], _process_val))
                if len(self._raw__raw_blocks[i]) != 5:
                    raise kaitaistruct.ConsistencyError("raw(blocks)", 5, len(self._raw__raw_blocks[i]))
                parent.write_bytes(self._raw__raw_blocks[i])
            _io__raw_blocks.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.blocks[i]._write__seq(_io__raw_blocks)

        self.blocks_b._write__seq(self._io)


    def _check(self):
        if len(self.blocks) != 2:
            raise kaitaistruct.ConsistencyError("blocks", 2, len(self.blocks))
        for i in range(len(self.blocks)):
            pass
            if self.blocks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("blocks", self._root, self.blocks[i]._root)
            if self.blocks[i]._parent != self:
                raise kaitaistruct.ConsistencyError("blocks", self, self.blocks[i]._parent)

        if self.blocks_b._root != self._root:
            raise kaitaistruct.ConsistencyError("blocks_b", self._root, self.blocks_b._root)
        if self.blocks_b._parent != self:
            raise kaitaistruct.ConsistencyError("blocks_b", self, self.blocks_b._parent)
        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.a = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u4le(self.a)


        def _check(self):
            self._dirty = False


    class BlocksBWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_blocks_0_b = False
            self.blocks_0_b__enabled = True
            self._should_write_blocks_1_b = False
            self.blocks_1_b__enabled = True

        def _read(self):
            self.dummy = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.blocks_0_b
            if hasattr(self, '_m_blocks_0_b'):
                pass

            _ = self.blocks_1_b
            if hasattr(self, '_m_blocks_1_b'):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._should_write_blocks_0_b = self.blocks_0_b__enabled
            self._should_write_blocks_1_b = self.blocks_1_b__enabled
            self._io.write_u1(self.dummy)


        def _check(self):
            if self.blocks_0_b__enabled:
                pass

            if self.blocks_1_b__enabled:
                pass

            self._dirty = False

        @property
        def blocks_0_b(self):
            if self._should_write_blocks_0_b:
                self._write_blocks_0_b()
            if hasattr(self, '_m_blocks_0_b'):
                return self._m_blocks_0_b

            if not self.blocks_0_b__enabled:
                return None

            io = self._parent.blocks[0]._io
            _pos = io.pos()
            io.seek(4)
            self._m_blocks_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_0_b', None)

        @blocks_0_b.setter
        def blocks_0_b(self, v):
            self._dirty = True
            self._m_blocks_0_b = v

        def _write_blocks_0_b(self):
            self._should_write_blocks_0_b = False
            io = self._parent.blocks[0]._io
            _pos = io.pos()
            io.seek(4)
            io.write_u1(self._m_blocks_0_b)
            io.seek(_pos)

        @property
        def blocks_1_b(self):
            if self._should_write_blocks_1_b:
                self._write_blocks_1_b()
            if hasattr(self, '_m_blocks_1_b'):
                return self._m_blocks_1_b

            if not self.blocks_1_b__enabled:
                return None

            io = self._parent.blocks[1]._io
            _pos = io.pos()
            io.seek(4)
            self._m_blocks_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_1_b', None)

        @blocks_1_b.setter
        def blocks_1_b(self, v):
            self._dirty = True
            self._m_blocks_1_b = v

        def _write_blocks_1_b(self):
            self._should_write_blocks_1_b = False
            io = self._parent.blocks[1]._io
            _pos = io.pos()
            io.seek(4)
            io.write_u1(self._m_blocks_1_b)
            io.seek(_pos)




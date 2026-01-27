# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessRepeatUsertype(ReadWriteKaitaiStruct):
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
            self._raw_blocks.append(KaitaiStream.process_xor_one(self._raw__raw_blocks[i], 158))
            _io__raw_blocks = KaitaiStream(BytesIO(self._raw_blocks[i]))
            _t_blocks = ProcessRepeatUsertype.Block(_io__raw_blocks, self, self._root)
            try:
                _t_blocks._read()
            finally:
                self.blocks.append(_t_blocks)

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()



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
            _process_val = 158
            def handler(parent, _io__raw_blocks=_io__raw_blocks, i=i, _process_val=_process_val):
                self._raw_blocks.append(_io__raw_blocks.to_byte_array())
                self._raw__raw_blocks.append(KaitaiStream.process_xor_one(self._raw_blocks[i], _process_val))
                if len(self._raw__raw_blocks[i]) != 5:
                    raise kaitaistruct.ConsistencyError("raw(blocks)", 5, len(self._raw__raw_blocks[i]))
                parent.write_bytes(self._raw__raw_blocks[i])
            _io__raw_blocks.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.blocks[i]._write__seq(_io__raw_blocks)



    def _check(self):
        if len(self.blocks) != 2:
            raise kaitaistruct.ConsistencyError("blocks", 2, len(self.blocks))
        for i in range(len(self.blocks)):
            pass
            if self.blocks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("blocks", self._root, self.blocks[i]._root)
            if self.blocks[i]._parent != self:
                raise kaitaistruct.ConsistencyError("blocks", self, self.blocks[i]._parent)

        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.a = self._io.read_s4le()
            self.b = self._io.read_s1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s4le(self.a)
            self._io.write_s1(self.b)


        def _check(self):
            self._dirty = False




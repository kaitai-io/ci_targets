# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from my_custom_fx import MyCustomFx


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessRepeatUsertypeDynargCustom(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_blocks = []
        self._raw__raw_blocks = []
        self.blocks = []
        for i in range(2):
            self._raw__raw_blocks.append(self._io.read_bytes(5))
            _process = MyCustomFx(self._io.pos() + 13 * i, self._io.pos() % 2 == 0, (b"\x20\x30" if i == 1 else b"\x40"))
            self._raw_blocks.append(_process.decode(self._raw__raw_blocks[i]))
            _io__raw_blocks = KaitaiStream(BytesIO(self._raw_blocks[i]))
            self.blocks.append(ProcessRepeatUsertypeDynargCustom.Block(_io__raw_blocks, self, self._root))

        self.blocks_b = ProcessRepeatUsertypeDynargCustom.BlocksBWrapper(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks)):
            pass
            self.blocks[i]._fetch_instances()

        self.blocks_b._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.a = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class BlocksBWrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.dummy = self._io.read_u1()


        def _fetch_instances(self):
            pass
            _ = self.blocks_0_b
            if hasattr(self, '_m_blocks_0_b'):
                pass

            _ = self.blocks_1_b
            if hasattr(self, '_m_blocks_1_b'):
                pass


        @property
        def blocks_0_b(self):
            if hasattr(self, '_m_blocks_0_b'):
                return self._m_blocks_0_b

            io = self._parent.blocks[0]._io
            _pos = io.pos()
            io.seek(4)
            self._m_blocks_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_0_b', None)

        @property
        def blocks_1_b(self):
            if hasattr(self, '_m_blocks_1_b'):
                return self._m_blocks_1_b

            io = self._parent.blocks[1]._io
            _pos = io.pos()
            io.seek(4)
            self._m_blocks_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_1_b', None)




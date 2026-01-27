# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessRepeatUsertypeDynargRotate(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_blocks_rol = []
        self._raw__raw_blocks_rol = []
        self.blocks_rol = []
        for i in range(2):
            self._raw__raw_blocks_rol.append(self._io.read_bytes(3))
            self._raw_blocks_rol.append(KaitaiStream.process_rotate_left(self._raw__raw_blocks_rol[i], self._io.pos() - 4 * i, 1))
            _io__raw_blocks_rol = KaitaiStream(BytesIO(self._raw_blocks_rol[i]))
            self.blocks_rol.append(ProcessRepeatUsertypeDynargRotate.Block(_io__raw_blocks_rol, self, self._root))

        self._raw_blocks_ror = []
        self._raw__raw_blocks_ror = []
        self.blocks_ror = []
        for i in range(3):
            self._raw__raw_blocks_ror.append(self._io.read_bytes(3))
            self._raw_blocks_ror.append(KaitaiStream.process_rotate_left(self._raw__raw_blocks_ror[i], 8 - ((self._io.pos() - 6) - 4 * i), 1))
            _io__raw_blocks_ror = KaitaiStream(BytesIO(self._raw_blocks_ror[i]))
            self.blocks_ror.append(ProcessRepeatUsertypeDynargRotate.Block(_io__raw_blocks_ror, self, self._root))

        self.blocks_b = ProcessRepeatUsertypeDynargRotate.BlocksBWrapper(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks_rol)):
            pass
            self.blocks_rol[i]._fetch_instances()

        for i in range(len(self.blocks_ror)):
            pass
            self.blocks_ror[i]._fetch_instances()

        self.blocks_b._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.a = self._io.read_u2le()


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
            _ = self.blocks_rol_0_b
            if hasattr(self, '_m_blocks_rol_0_b'):
                pass

            _ = self.blocks_rol_1_b
            if hasattr(self, '_m_blocks_rol_1_b'):
                pass

            _ = self.blocks_ror_0_b
            if hasattr(self, '_m_blocks_ror_0_b'):
                pass

            _ = self.blocks_ror_1_b
            if hasattr(self, '_m_blocks_ror_1_b'):
                pass

            _ = self.blocks_ror_2_b
            if hasattr(self, '_m_blocks_ror_2_b'):
                pass


        @property
        def blocks_rol_0_b(self):
            if hasattr(self, '_m_blocks_rol_0_b'):
                return self._m_blocks_rol_0_b

            io = self._parent.blocks_rol[0]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_rol_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_rol_0_b', None)

        @property
        def blocks_rol_1_b(self):
            if hasattr(self, '_m_blocks_rol_1_b'):
                return self._m_blocks_rol_1_b

            io = self._parent.blocks_rol[1]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_rol_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_rol_1_b', None)

        @property
        def blocks_ror_0_b(self):
            if hasattr(self, '_m_blocks_ror_0_b'):
                return self._m_blocks_ror_0_b

            io = self._parent.blocks_ror[0]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_0_b', None)

        @property
        def blocks_ror_1_b(self):
            if hasattr(self, '_m_blocks_ror_1_b'):
                return self._m_blocks_ror_1_b

            io = self._parent.blocks_ror[1]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_1_b', None)

        @property
        def blocks_ror_2_b(self):
            if hasattr(self, '_m_blocks_ror_2_b'):
                return self._m_blocks_ror_2_b

            io = self._parent.blocks_ror[2]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_2_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_2_b', None)




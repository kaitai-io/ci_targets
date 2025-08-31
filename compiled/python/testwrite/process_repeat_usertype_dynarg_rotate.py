# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessRepeatUsertypeDynargRotate(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_blocks_rol = []
        self._raw__raw_blocks_rol = []
        self.blocks_rol = []
        for i in range(2):
            self._raw__raw_blocks_rol.append(self._io.read_bytes(3))
            self._raw_blocks_rol.append(KaitaiStream.process_rotate_left(self._raw__raw_blocks_rol[i], self._io.pos() - 4 * i, 1))
            _io__raw_blocks_rol = KaitaiStream(BytesIO(self._raw_blocks_rol[i]))
            _t_blocks_rol = ProcessRepeatUsertypeDynargRotate.Block(_io__raw_blocks_rol, self, self._root)
            try:
                _t_blocks_rol._read()
            finally:
                self.blocks_rol.append(_t_blocks_rol)

        self._raw_blocks_ror = []
        self._raw__raw_blocks_ror = []
        self.blocks_ror = []
        for i in range(3):
            self._raw__raw_blocks_ror.append(self._io.read_bytes(3))
            self._raw_blocks_ror.append(KaitaiStream.process_rotate_left(self._raw__raw_blocks_ror[i], 8 - ((self._io.pos() - 6) - 4 * i), 1))
            _io__raw_blocks_ror = KaitaiStream(BytesIO(self._raw_blocks_ror[i]))
            _t_blocks_ror = ProcessRepeatUsertypeDynargRotate.Block(_io__raw_blocks_ror, self, self._root)
            try:
                _t_blocks_ror._read()
            finally:
                self.blocks_ror.append(_t_blocks_ror)

        self.blocks_b = ProcessRepeatUsertypeDynargRotate.BlocksBWrapper(self._io, self, self._root)
        self.blocks_b._read()


    def _fetch_instances(self):
        pass
        for i in range(len(self.blocks_rol)):
            pass
            self.blocks_rol[i]._fetch_instances()

        for i in range(len(self.blocks_ror)):
            pass
            self.blocks_ror[i]._fetch_instances()

        self.blocks_b._fetch_instances()


    def _write__seq(self, io=None):
        super(ProcessRepeatUsertypeDynargRotate, self)._write__seq(io)
        self._raw_blocks_rol = []
        self._raw__raw_blocks_rol = []
        for i in range(len(self.blocks_rol)):
            pass
            _io__raw_blocks_rol = KaitaiStream(BytesIO(bytearray(3)))
            self._io.add_child_stream(_io__raw_blocks_rol)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (3))
            _process_val = self._io.pos() - 4 * i
            def handler(parent, _io__raw_blocks_rol=_io__raw_blocks_rol, i=i, _process_val=_process_val):
                self._raw_blocks_rol.append(_io__raw_blocks_rol.to_byte_array())
                self._raw__raw_blocks_rol.append(KaitaiStream.process_rotate_left(self._raw_blocks_rol[i], 8 - (_process_val), 1))
                if len(self._raw__raw_blocks_rol[i]) != 3:
                    raise kaitaistruct.ConsistencyError(u"raw(blocks_rol)", len(self._raw__raw_blocks_rol[i]), 3)
                parent.write_bytes(self._raw__raw_blocks_rol[i])
            _io__raw_blocks_rol.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.blocks_rol[i]._write__seq(_io__raw_blocks_rol)

        self._raw_blocks_ror = []
        self._raw__raw_blocks_ror = []
        for i in range(len(self.blocks_ror)):
            pass
            _io__raw_blocks_ror = KaitaiStream(BytesIO(bytearray(3)))
            self._io.add_child_stream(_io__raw_blocks_ror)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (3))
            _process_val = (self._io.pos() - 6) - 4 * i
            def handler(parent, _io__raw_blocks_ror=_io__raw_blocks_ror, i=i, _process_val=_process_val):
                self._raw_blocks_ror.append(_io__raw_blocks_ror.to_byte_array())
                self._raw__raw_blocks_ror.append(KaitaiStream.process_rotate_left(self._raw_blocks_ror[i], _process_val, 1))
                if len(self._raw__raw_blocks_ror[i]) != 3:
                    raise kaitaistruct.ConsistencyError(u"raw(blocks_ror)", len(self._raw__raw_blocks_ror[i]), 3)
                parent.write_bytes(self._raw__raw_blocks_ror[i])
            _io__raw_blocks_ror.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.blocks_ror[i]._write__seq(_io__raw_blocks_ror)

        self.blocks_b._write__seq(self._io)


    def _check(self):
        pass
        if len(self.blocks_rol) != 2:
            raise kaitaistruct.ConsistencyError(u"blocks_rol", len(self.blocks_rol), 2)
        for i in range(len(self.blocks_rol)):
            pass
            if self.blocks_rol[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"blocks_rol", self.blocks_rol[i]._root, self._root)
            if self.blocks_rol[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"blocks_rol", self.blocks_rol[i]._parent, self)

        if len(self.blocks_ror) != 3:
            raise kaitaistruct.ConsistencyError(u"blocks_ror", len(self.blocks_ror), 3)
        for i in range(len(self.blocks_ror)):
            pass
            if self.blocks_ror[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"blocks_ror", self.blocks_ror[i]._root, self._root)
            if self.blocks_ror[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"blocks_ror", self.blocks_ror[i]._parent, self)

        if self.blocks_b._root != self._root:
            raise kaitaistruct.ConsistencyError(u"blocks_b", self.blocks_b._root, self._root)
        if self.blocks_b._parent != self:
            raise kaitaistruct.ConsistencyError(u"blocks_b", self.blocks_b._parent, self)

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.a = self._io.read_u2le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ProcessRepeatUsertypeDynargRotate.Block, self)._write__seq(io)
            self._io.write_u2le(self.a)


        def _check(self):
            pass


    class BlocksBWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._should_write_blocks_rol_0_b = False
            self.blocks_rol_0_b__to_write = True
            self._should_write_blocks_rol_1_b = False
            self.blocks_rol_1_b__to_write = True
            self._should_write_blocks_ror_0_b = False
            self.blocks_ror_0_b__to_write = True
            self._should_write_blocks_ror_1_b = False
            self.blocks_ror_1_b__to_write = True
            self._should_write_blocks_ror_2_b = False
            self.blocks_ror_2_b__to_write = True

        def _read(self):
            self.dummy = self._io.read_u1()


        def _fetch_instances(self):
            pass
            _ = self.blocks_rol_0_b
            _ = self.blocks_rol_1_b
            _ = self.blocks_ror_0_b
            _ = self.blocks_ror_1_b
            _ = self.blocks_ror_2_b


        def _write__seq(self, io=None):
            super(ProcessRepeatUsertypeDynargRotate.BlocksBWrapper, self)._write__seq(io)
            self._should_write_blocks_rol_0_b = self.blocks_rol_0_b__to_write
            self._should_write_blocks_rol_1_b = self.blocks_rol_1_b__to_write
            self._should_write_blocks_ror_0_b = self.blocks_ror_0_b__to_write
            self._should_write_blocks_ror_1_b = self.blocks_ror_1_b__to_write
            self._should_write_blocks_ror_2_b = self.blocks_ror_2_b__to_write
            self._io.write_u1(self.dummy)


        def _check(self):
            pass

        @property
        def blocks_rol_0_b(self):
            if self._should_write_blocks_rol_0_b:
                self._write_blocks_rol_0_b()
            if hasattr(self, '_m_blocks_rol_0_b'):
                return self._m_blocks_rol_0_b

            io = self._parent.blocks_rol[0]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_rol_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_rol_0_b', None)

        @blocks_rol_0_b.setter
        def blocks_rol_0_b(self, v):
            self._m_blocks_rol_0_b = v

        def _write_blocks_rol_0_b(self):
            self._should_write_blocks_rol_0_b = False
            io = self._parent.blocks_rol[0]._io
            _pos = io.pos()
            io.seek(2)
            io.write_u1(self._m_blocks_rol_0_b)
            io.seek(_pos)


        def _check_blocks_rol_0_b(self):
            pass

        @property
        def blocks_rol_1_b(self):
            if self._should_write_blocks_rol_1_b:
                self._write_blocks_rol_1_b()
            if hasattr(self, '_m_blocks_rol_1_b'):
                return self._m_blocks_rol_1_b

            io = self._parent.blocks_rol[1]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_rol_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_rol_1_b', None)

        @blocks_rol_1_b.setter
        def blocks_rol_1_b(self, v):
            self._m_blocks_rol_1_b = v

        def _write_blocks_rol_1_b(self):
            self._should_write_blocks_rol_1_b = False
            io = self._parent.blocks_rol[1]._io
            _pos = io.pos()
            io.seek(2)
            io.write_u1(self._m_blocks_rol_1_b)
            io.seek(_pos)


        def _check_blocks_rol_1_b(self):
            pass

        @property
        def blocks_ror_0_b(self):
            if self._should_write_blocks_ror_0_b:
                self._write_blocks_ror_0_b()
            if hasattr(self, '_m_blocks_ror_0_b'):
                return self._m_blocks_ror_0_b

            io = self._parent.blocks_ror[0]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_0_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_0_b', None)

        @blocks_ror_0_b.setter
        def blocks_ror_0_b(self, v):
            self._m_blocks_ror_0_b = v

        def _write_blocks_ror_0_b(self):
            self._should_write_blocks_ror_0_b = False
            io = self._parent.blocks_ror[0]._io
            _pos = io.pos()
            io.seek(2)
            io.write_u1(self._m_blocks_ror_0_b)
            io.seek(_pos)


        def _check_blocks_ror_0_b(self):
            pass

        @property
        def blocks_ror_1_b(self):
            if self._should_write_blocks_ror_1_b:
                self._write_blocks_ror_1_b()
            if hasattr(self, '_m_blocks_ror_1_b'):
                return self._m_blocks_ror_1_b

            io = self._parent.blocks_ror[1]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_1_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_1_b', None)

        @blocks_ror_1_b.setter
        def blocks_ror_1_b(self, v):
            self._m_blocks_ror_1_b = v

        def _write_blocks_ror_1_b(self):
            self._should_write_blocks_ror_1_b = False
            io = self._parent.blocks_ror[1]._io
            _pos = io.pos()
            io.seek(2)
            io.write_u1(self._m_blocks_ror_1_b)
            io.seek(_pos)


        def _check_blocks_ror_1_b(self):
            pass

        @property
        def blocks_ror_2_b(self):
            if self._should_write_blocks_ror_2_b:
                self._write_blocks_ror_2_b()
            if hasattr(self, '_m_blocks_ror_2_b'):
                return self._m_blocks_ror_2_b

            io = self._parent.blocks_ror[2]._io
            _pos = io.pos()
            io.seek(2)
            self._m_blocks_ror_2_b = io.read_u1()
            io.seek(_pos)
            return getattr(self, '_m_blocks_ror_2_b', None)

        @blocks_ror_2_b.setter
        def blocks_ror_2_b(self, v):
            self._m_blocks_ror_2_b = v

        def _write_blocks_ror_2_b(self):
            self._should_write_blocks_ror_2_b = False
            io = self._parent.blocks_ror[2]._io
            _pos = io.pos()
            io.seek(2)
            io.write_u1(self._m_blocks_ror_2_b)
            io.seek(_pos)


        def _check_blocks_ror_2_b(self):
            pass




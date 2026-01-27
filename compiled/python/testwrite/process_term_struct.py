# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from my_custom_fx import MyCustomFx


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessTermStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw__raw_s1 = self._io.read_bytes_term(124, False, True, True)
        _process = MyCustomFx(32, False, b"\x00")
        self._raw_s1 = _process.decode(self._raw__raw_s1)
        self.s1__outer_size = len(self._raw__raw_s1)
        self.s1__inner_size = len(self._raw_s1)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = ProcessTermStruct.BytesWrapper(_io__raw_s1, self, self._root)
        self.s1._read()
        self._raw__raw_s2 = self._io.read_bytes_term(124, False, False, True)
        _process = MyCustomFx(32, False, b"\x00")
        self._raw_s2 = _process.decode(self._raw__raw_s2)
        self.s2__outer_size = len(self._raw__raw_s2)
        self.s2__inner_size = len(self._raw_s2)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = ProcessTermStruct.BytesWrapper(_io__raw_s2, self, self._root)
        self.s2._read()
        self._raw__raw_s3 = self._io.read_bytes_term(64, True, True, True)
        _process = MyCustomFx(32, False, b"\x00")
        self._raw_s3 = _process.decode(self._raw__raw_s3)
        self.s3__outer_size = len(self._raw__raw_s3)
        self.s3__inner_size = len(self._raw_s3)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = ProcessTermStruct.BytesWrapper(_io__raw_s3, self, self._root)
        self.s3._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        _io__raw_s1 = KaitaiStream(BytesIO(bytes(self.s1__inner_size)))
        self._io.add_child_stream(_io__raw_s1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s1__outer_size))
        self._io.seek(self._io.pos() + (1))
        _process_val = MyCustomFx(32, False, b"\x00")
        def handler(parent, _io__raw_s1=_io__raw_s1, _process_val=_process_val):
            self._raw_s1 = _io__raw_s1.to_byte_array()
            self._raw__raw_s1 = _process_val.encode(self._raw_s1)
            if KaitaiStream.byte_array_index_of(self._raw__raw_s1, 124) != -1:
                raise kaitaistruct.ConsistencyError("raw(s1)", -1, KaitaiStream.byte_array_index_of(self._raw__raw_s1, 124))
            parent.write_bytes(self._raw__raw_s1)
            parent.write_u1(124)
        _io__raw_s1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s1._write__seq(_io__raw_s1)
        _io__raw_s2 = KaitaiStream(BytesIO(bytes(self.s2__inner_size)))
        self._io.add_child_stream(_io__raw_s2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s2__outer_size))
        _process_val = MyCustomFx(32, False, b"\x00")
        def handler(parent, _io__raw_s2=_io__raw_s2, _process_val=_process_val):
            self._raw_s2 = _io__raw_s2.to_byte_array()
            self._raw__raw_s2 = _process_val.encode(self._raw_s2)
            if KaitaiStream.byte_array_index_of(self._raw__raw_s2, 124) != -1:
                raise kaitaistruct.ConsistencyError("raw(s2)", -1, KaitaiStream.byte_array_index_of(self._raw__raw_s2, 124))
            parent.write_bytes(self._raw__raw_s2)
            _pos = parent.pos()
            parent.write_u1(124)
            parent.seek(_pos)
        _io__raw_s2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s2._write__seq(_io__raw_s2)
        _io__raw_s3 = KaitaiStream(BytesIO(bytes(self.s3__inner_size)))
        self._io.add_child_stream(_io__raw_s3)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s3__outer_size))
        _process_val = MyCustomFx(32, False, b"\x00")
        def handler(parent, _io__raw_s3=_io__raw_s3, _process_val=_process_val):
            self._raw_s3 = _io__raw_s3.to_byte_array()
            self._raw__raw_s3 = _process_val.encode(self._raw_s3)
            if len(self._raw__raw_s3) == 0:
                raise kaitaistruct.ConsistencyError("raw(s3)", 0, len(self._raw__raw_s3))
            if KaitaiStream.byte_array_index_of(self._raw__raw_s3, 64) != len(self._raw__raw_s3) - 1:
                raise kaitaistruct.ConsistencyError("raw(s3)", len(self._raw__raw_s3) - 1, KaitaiStream.byte_array_index_of(self._raw__raw_s3, 64))
            parent.write_bytes(self._raw__raw_s3)
        _io__raw_s3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s3._write__seq(_io__raw_s3)


    def _check(self):
        if self.s1._root != self._root:
            raise kaitaistruct.ConsistencyError("s1", self._root, self.s1._root)
        if self.s1._parent != self:
            raise kaitaistruct.ConsistencyError("s1", self, self.s1._parent)
        if self.s2._root != self._root:
            raise kaitaistruct.ConsistencyError("s2", self._root, self.s2._root)
        if self.s2._parent != self:
            raise kaitaistruct.ConsistencyError("s2", self, self.s2._parent)
        if self.s3._root != self._root:
            raise kaitaistruct.ConsistencyError("s3", self._root, self.s3._root)
        if self.s3._parent != self:
            raise kaitaistruct.ConsistencyError("s3", self, self.s3._parent)
        self._dirty = False

    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StructPadTermEqual(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_s1 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.s1__inner_size = len(self._raw_s1)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = StructPadTermEqual.BytesWrapper(_io__raw_s1, self, self._root)
        self.s1._read()
        self._raw_s2 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, True)
        self.s2__inner_size = len(self._raw_s2)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = StructPadTermEqual.BytesWrapper(_io__raw_s2, self, self._root)
        self.s2._read()
        self._raw_s3 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 43, False)
        self.s3__inner_size = len(self._raw_s3)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = StructPadTermEqual.BytesWrapper(_io__raw_s3, self, self._root)
        self.s3._read()
        self._raw_s4 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 46, True)
        self.s4__inner_size = len(self._raw_s4)
        _io__raw_s4 = KaitaiStream(BytesIO(self._raw_s4))
        self.s4 = StructPadTermEqual.BytesWrapper(_io__raw_s4, self, self._root)
        self.s4._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()
        self.s4._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        _io__raw_s1 = KaitaiStream(BytesIO(bytes(self.s1__inner_size)))
        self._io.add_child_stream(_io__raw_s1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_s1=_io__raw_s1):
            self._raw_s1 = _io__raw_s1.to_byte_array()
            if len(self._raw_s1) > 20:
                raise kaitaistruct.ConsistencyError("raw(s1)", 20, len(self._raw_s1))
            if KaitaiStream.byte_array_index_of(self._raw_s1, 64) != -1:
                raise kaitaistruct.ConsistencyError("raw(s1)", -1, KaitaiStream.byte_array_index_of(self._raw_s1, 64))
            parent.write_bytes_limit(self._raw_s1, 20, 64, 64)
        _io__raw_s1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s1._write__seq(_io__raw_s1)
        _io__raw_s2 = KaitaiStream(BytesIO(bytes(self.s2__inner_size)))
        self._io.add_child_stream(_io__raw_s2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_s2=_io__raw_s2):
            self._raw_s2 = _io__raw_s2.to_byte_array()
            if len(self._raw_s2) > 20:
                raise kaitaistruct.ConsistencyError("raw(s2)", 20, len(self._raw_s2))
            if  ((KaitaiStream.byte_array_index_of(self._raw_s2, 64) != -1) and (KaitaiStream.byte_array_index_of(self._raw_s2, 64) != len(self._raw_s2) - 1)) :
                raise kaitaistruct.ConsistencyError("raw(s2)", len(self._raw_s2) - 1, KaitaiStream.byte_array_index_of(self._raw_s2, 64))
            if KaitaiStream.byte_array_index_of(self._raw_s2, 64) == -1:
                pass
                if  ((len(self._raw_s2) != 0) and (self._raw_s2[-1] == 43)) :
                    raise kaitaistruct.ConsistencyError("raw(s2)", 43, self._raw_s2[-1])

            parent.write_bytes_limit(self._raw_s2, 20, 43, 43)
        _io__raw_s2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s2._write__seq(_io__raw_s2)
        _io__raw_s3 = KaitaiStream(BytesIO(bytes(self.s3__inner_size)))
        self._io.add_child_stream(_io__raw_s3)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_s3=_io__raw_s3):
            self._raw_s3 = _io__raw_s3.to_byte_array()
            if len(self._raw_s3) > 20:
                raise kaitaistruct.ConsistencyError("raw(s3)", 20, len(self._raw_s3))
            if KaitaiStream.byte_array_index_of(self._raw_s3, 43) != -1:
                raise kaitaistruct.ConsistencyError("raw(s3)", -1, KaitaiStream.byte_array_index_of(self._raw_s3, 43))
            parent.write_bytes_limit(self._raw_s3, 20, 43, 43)
        _io__raw_s3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s3._write__seq(_io__raw_s3)
        _io__raw_s4 = KaitaiStream(BytesIO(bytes(self.s4__inner_size)))
        self._io.add_child_stream(_io__raw_s4)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_s4=_io__raw_s4):
            self._raw_s4 = _io__raw_s4.to_byte_array()
            if len(self._raw_s4) > 20:
                raise kaitaistruct.ConsistencyError("raw(s4)", 20, len(self._raw_s4))
            if len(self._raw_s4) < 20:
                pass
                if len(self._raw_s4) == 0:
                    raise kaitaistruct.ConsistencyError("raw(s4)", 0, len(self._raw_s4))
                if KaitaiStream.byte_array_index_of(self._raw_s4, 46) != len(self._raw_s4) - 1:
                    raise kaitaistruct.ConsistencyError("raw(s4)", len(self._raw_s4) - 1, KaitaiStream.byte_array_index_of(self._raw_s4, 46))

            if len(self._raw_s4) == 20:
                pass
                if  ((KaitaiStream.byte_array_index_of(self._raw_s4, 46) != -1) and (KaitaiStream.byte_array_index_of(self._raw_s4, 46) != len(self._raw_s4) - 1)) :
                    raise kaitaistruct.ConsistencyError("raw(s4)", len(self._raw_s4) - 1, KaitaiStream.byte_array_index_of(self._raw_s4, 46))

            parent.write_bytes_limit(self._raw_s4, 20, 46, 46)
        _io__raw_s4.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s4._write__seq(_io__raw_s4)


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
        if self.s4._root != self._root:
            raise kaitaistruct.ConsistencyError("s4", self._root, self.s4._root)
        if self.s4._parent != self:
            raise kaitaistruct.ConsistencyError("s4", self, self.s4._parent)
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




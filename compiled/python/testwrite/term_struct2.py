# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStruct2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(TermStruct2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_s1 = self._io.read_bytes_term(124, False, True, True)
        self.s1__outer_size = len(self._raw_s1)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = TermStruct2.BytesWrapper(_io__raw_s1, self, self._root)
        self.s1._read()
        self._raw_s2 = self._io.read_bytes_term(124, True, True, True)
        self.s2__outer_size = len(self._raw_s2)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = TermStruct2.BytesWrapper(_io__raw_s2, self, self._root)
        self.s2._read()
        self._raw_s3 = self._io.read_bytes_term(64, False, False, True)
        self.s3__outer_size = len(self._raw_s3)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = TermStruct2.BytesWrapper(_io__raw_s3, self, self._root)
        self.s3._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()


    def _write__seq(self, io=None):
        super(TermStruct2, self)._write__seq(io)
        _io__raw_s1 = KaitaiStream(BytesIO(bytearray(self.s1__outer_size)))
        self._io.add_child_stream(_io__raw_s1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s1__outer_size))
        self._io.seek(self._io.pos() + (1))
        def handler(parent, _io__raw_s1=_io__raw_s1):
            self._raw_s1 = _io__raw_s1.to_byte_array()
            if KaitaiStream.byte_array_index_of(self._raw_s1, 124) != -1:
                raise kaitaistruct.ConsistencyError(u"raw(s1)", -1, KaitaiStream.byte_array_index_of(self._raw_s1, 124))
            parent.write_bytes(self._raw_s1)
            parent.write_u1(124)
        _io__raw_s1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s1._write__seq(_io__raw_s1)
        _io__raw_s2 = KaitaiStream(BytesIO(bytearray(self.s2__outer_size)))
        self._io.add_child_stream(_io__raw_s2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s2__outer_size))
        def handler(parent, _io__raw_s2=_io__raw_s2):
            self._raw_s2 = _io__raw_s2.to_byte_array()
            if len(self._raw_s2) == 0:
                raise kaitaistruct.ConsistencyError(u"raw(s2)", 0, len(self._raw_s2))
            if KaitaiStream.byte_array_index_of(self._raw_s2, 124) != len(self._raw_s2) - 1:
                raise kaitaistruct.ConsistencyError(u"raw(s2)", len(self._raw_s2) - 1, KaitaiStream.byte_array_index_of(self._raw_s2, 124))
            parent.write_bytes(self._raw_s2)
        _io__raw_s2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s2._write__seq(_io__raw_s2)
        _io__raw_s3 = KaitaiStream(BytesIO(bytearray(self.s3__outer_size)))
        self._io.add_child_stream(_io__raw_s3)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.s3__outer_size))
        def handler(parent, _io__raw_s3=_io__raw_s3):
            self._raw_s3 = _io__raw_s3.to_byte_array()
            if KaitaiStream.byte_array_index_of(self._raw_s3, 64) != -1:
                raise kaitaistruct.ConsistencyError(u"raw(s3)", -1, KaitaiStream.byte_array_index_of(self._raw_s3, 64))
            parent.write_bytes(self._raw_s3)
            _pos = parent.pos()
            parent.write_u1(64)
            parent.seek(_pos)
        _io__raw_s3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.s3._write__seq(_io__raw_s3)


    def _check(self):
        if self.s1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"s1", self._root, self.s1._root)
        if self.s1._parent != self:
            raise kaitaistruct.ConsistencyError(u"s1", self, self.s1._parent)
        if self.s2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"s2", self._root, self.s2._root)
        if self.s2._parent != self:
            raise kaitaistruct.ConsistencyError(u"s2", self, self.s2._parent)
        if self.s3._root != self._root:
            raise kaitaistruct.ConsistencyError(u"s3", self._root, self.s3._root)
        if self.s3._parent != self:
            raise kaitaistruct.ConsistencyError(u"s3", self, self.s3._parent)
        self._dirty = False

    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(TermStruct2.BytesWrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(TermStruct2.BytesWrapper, self)._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False




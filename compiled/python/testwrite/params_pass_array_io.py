# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassArrayIo(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_first = self._io.read_bytes(1)
        _io__raw_first = KaitaiStream(BytesIO(self._raw_first))
        self.first = ParamsPassArrayIo.Block(_io__raw_first, self, self._root)
        self.first._read()
        self.one = ParamsPassArrayIo.ParamType([self.first._io, self._root._io], self._io, self, self._root)
        self.one._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.first._fetch_instances()
        self.one._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        _io__raw_first = KaitaiStream(BytesIO(bytes(1)))
        self._io.add_child_stream(_io__raw_first)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (1))
        def handler(parent, _io__raw_first=_io__raw_first):
            self._raw_first = _io__raw_first.to_byte_array()
            if len(self._raw_first) != 1:
                raise kaitaistruct.ConsistencyError("raw(first)", 1, len(self._raw_first))
            parent.write_bytes(self._raw_first)
        _io__raw_first.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.first._write__seq(_io__raw_first)
        object.__setattr__(self.one, 'arg_streams', [self.first._io, self._root._io])
        self.one._write__seq(self._io)


    def _check(self):
        if self.first._root != self._root:
            raise kaitaistruct.ConsistencyError("first", self._root, self.first._root)
        if self.first._parent != self:
            raise kaitaistruct.ConsistencyError("first", self, self.first._parent)
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError("one", self._root, self.one._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError("one", self, self.one._parent)
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
        def __init__(self, arg_streams, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.arg_streams = arg_streams

        def _read(self):
            self.buf = self._io.read_bytes(self.arg_streams[0].size())
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            if len(self.buf) != self.arg_streams[0].size():
                raise kaitaistruct.ConsistencyError("buf", self.arg_streams[0].size(), len(self.buf))
            self._io.write_bytes(self.buf)


        def _check(self):
            self._dirty = False




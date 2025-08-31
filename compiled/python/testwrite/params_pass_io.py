# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassIo(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_first = self._io.read_bytes(1)
        _io__raw_first = KaitaiStream(BytesIO(self._raw_first))
        self.first = ParamsPassIo.Block(_io__raw_first, self, self._root)
        self.first._read()
        self.one = ParamsPassIo.ParamType((self.first._io if self.first.foo == 255 else self._root._io), self._io, self, self._root)
        self.one._read()


    def _fetch_instances(self):
        pass
        self.first._fetch_instances()
        self.one._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsPassIo, self)._write__seq(io)
        _io__raw_first = KaitaiStream(BytesIO(bytearray(1)))
        self._io.add_child_stream(_io__raw_first)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (1))
        def handler(parent, _io__raw_first=_io__raw_first):
            self._raw_first = _io__raw_first.to_byte_array()
            if len(self._raw_first) != 1:
                raise kaitaistruct.ConsistencyError(u"raw(first)", len(self._raw_first), 1)
            parent.write_bytes(self._raw_first)
        _io__raw_first.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.first._write__seq(_io__raw_first)
        self.one.arg_stream = (self.first._io if self.first.foo == 255 else self._root._io)
        self.one._write__seq(self._io)


    def _check(self):
        pass
        if self.first._root != self._root:
            raise kaitaistruct.ConsistencyError(u"first", self.first._root, self._root)
        if self.first._parent != self:
            raise kaitaistruct.ConsistencyError(u"first", self.first._parent, self)
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError(u"one", self.one._root, self._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError(u"one", self.one._parent, self)

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u1()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassIo.Block, self)._write__seq(io)
            self._io.write_u1(self.foo)


        def _check(self):
            pass


    class ParamType(ReadWriteKaitaiStruct):
        def __init__(self, arg_stream, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.arg_stream = arg_stream

        def _read(self):
            self.buf = self._io.read_bytes(self.arg_stream.size())


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassIo.ParamType, self)._write__seq(io)
            if len(self.buf) != self.arg_stream.size():
                raise kaitaistruct.ConsistencyError(u"buf", len(self.buf), self.arg_stream.size())
            self._io.write_bytes(self.buf)


        def _check(self):
            pass




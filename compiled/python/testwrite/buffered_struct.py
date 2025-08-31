# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BufferedStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len1 = self._io.read_u4le()
        self._raw_block1 = self._io.read_bytes(self.len1)
        _io__raw_block1 = KaitaiStream(BytesIO(self._raw_block1))
        self.block1 = BufferedStruct.Block(_io__raw_block1, self, self._root)
        self.block1._read()
        self.len2 = self._io.read_u4le()
        self._raw_block2 = self._io.read_bytes(self.len2)
        _io__raw_block2 = KaitaiStream(BytesIO(self._raw_block2))
        self.block2 = BufferedStruct.Block(_io__raw_block2, self, self._root)
        self.block2._read()
        self.finisher = self._io.read_u4le()


    def _fetch_instances(self):
        pass
        self.block1._fetch_instances()
        self.block2._fetch_instances()


    def _write__seq(self, io=None):
        super(BufferedStruct, self)._write__seq(io)
        self._io.write_u4le(self.len1)
        _io__raw_block1 = KaitaiStream(BytesIO(bytearray(self.len1)))
        self._io.add_child_stream(_io__raw_block1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len1))
        def handler(parent, _io__raw_block1=_io__raw_block1):
            self._raw_block1 = _io__raw_block1.to_byte_array()
            if len(self._raw_block1) != self.len1:
                raise kaitaistruct.ConsistencyError(u"raw(block1)", len(self._raw_block1), self.len1)
            parent.write_bytes(self._raw_block1)
        _io__raw_block1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.block1._write__seq(_io__raw_block1)
        self._io.write_u4le(self.len2)
        _io__raw_block2 = KaitaiStream(BytesIO(bytearray(self.len2)))
        self._io.add_child_stream(_io__raw_block2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len2))
        def handler(parent, _io__raw_block2=_io__raw_block2):
            self._raw_block2 = _io__raw_block2.to_byte_array()
            if len(self._raw_block2) != self.len2:
                raise kaitaistruct.ConsistencyError(u"raw(block2)", len(self._raw_block2), self.len2)
            parent.write_bytes(self._raw_block2)
        _io__raw_block2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.block2._write__seq(_io__raw_block2)
        self._io.write_u4le(self.finisher)


    def _check(self):
        pass
        if self.block1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"block1", self.block1._root, self._root)
        if self.block1._parent != self:
            raise kaitaistruct.ConsistencyError(u"block1", self.block1._parent, self)
        if self.block2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"block2", self.block2._root, self._root)
        if self.block2._parent != self:
            raise kaitaistruct.ConsistencyError(u"block2", self.block2._parent, self)

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.number1 = self._io.read_u4le()
            self.number2 = self._io.read_u4le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BufferedStruct.Block, self)._write__seq(io)
            self._io.write_u4le(self.number1)
            self._io.write_u4le(self.number2)


        def _check(self):
            pass




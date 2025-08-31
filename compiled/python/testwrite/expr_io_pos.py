# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoPos(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_substream1 = self._io.read_bytes(16)
        _io__raw_substream1 = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = ExprIoPos.AllPlusNumber(_io__raw_substream1, self, self._root)
        self.substream1._read()
        self._raw_substream2 = self._io.read_bytes(14)
        _io__raw_substream2 = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = ExprIoPos.AllPlusNumber(_io__raw_substream2, self, self._root)
        self.substream2._read()


    def _fetch_instances(self):
        pass
        self.substream1._fetch_instances()
        self.substream2._fetch_instances()


    def _write__seq(self, io=None):
        super(ExprIoPos, self)._write__seq(io)
        _io__raw_substream1 = KaitaiStream(BytesIO(bytearray(16)))
        self._io.add_child_stream(_io__raw_substream1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (16))
        def handler(parent, _io__raw_substream1=_io__raw_substream1):
            self._raw_substream1 = _io__raw_substream1.to_byte_array()
            if len(self._raw_substream1) != 16:
                raise kaitaistruct.ConsistencyError(u"raw(substream1)", len(self._raw_substream1), 16)
            parent.write_bytes(self._raw_substream1)
        _io__raw_substream1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.substream1._write__seq(_io__raw_substream1)
        _io__raw_substream2 = KaitaiStream(BytesIO(bytearray(14)))
        self._io.add_child_stream(_io__raw_substream2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (14))
        def handler(parent, _io__raw_substream2=_io__raw_substream2):
            self._raw_substream2 = _io__raw_substream2.to_byte_array()
            if len(self._raw_substream2) != 14:
                raise kaitaistruct.ConsistencyError(u"raw(substream2)", len(self._raw_substream2), 14)
            parent.write_bytes(self._raw_substream2)
        _io__raw_substream2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.substream2._write__seq(_io__raw_substream2)


    def _check(self):
        pass
        if self.substream1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"substream1", self.substream1._root, self._root)
        if self.substream1._parent != self:
            raise kaitaistruct.ConsistencyError(u"substream1", self.substream1._parent, self)
        if self.substream2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"substream2", self.substream2._root, self._root)
        if self.substream2._parent != self:
            raise kaitaistruct.ConsistencyError(u"substream2", self.substream2._parent, self)

    class AllPlusNumber(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.my_str = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
            self.body = self._io.read_bytes((self._io.size() - self._io.pos()) - 2)
            self.number = self._io.read_u2le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprIoPos.AllPlusNumber, self)._write__seq(io)
            self._io.write_bytes((self.my_str).encode(u"UTF-8"))
            self._io.write_u1(0)
            if len(self.body) != (self._io.size() - self._io.pos()) - 2:
                raise kaitaistruct.ConsistencyError(u"body", len(self.body), (self._io.size() - self._io.pos()) - 2)
            self._io.write_bytes(self.body)
            self._io.write_u2le(self.number)


        def _check(self):
            pass
            if KaitaiStream.byte_array_index_of((self.my_str).encode(u"UTF-8"), 0) != -1:
                raise kaitaistruct.ConsistencyError(u"my_str", KaitaiStream.byte_array_index_of((self.my_str).encode(u"UTF-8"), 0), -1)




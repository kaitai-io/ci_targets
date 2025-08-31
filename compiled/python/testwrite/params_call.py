# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsCall(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.buf1 = ParamsCall.MyStr1(5, self._io, self, self._root)
        self.buf1._read()
        self.buf2 = ParamsCall.MyStr2(2 + 3, True, self._io, self, self._root)
        self.buf2._read()


    def _fetch_instances(self):
        pass
        self.buf1._fetch_instances()
        self.buf2._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsCall, self)._write__seq(io)
        self.buf1._write__seq(self._io)
        self.buf2._write__seq(self._io)


    def _check(self):
        pass
        if self.buf1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"buf1", self.buf1._root, self._root)
        if self.buf1._parent != self:
            raise kaitaistruct.ConsistencyError(u"buf1", self.buf1._parent, self)
        if self.buf1.len != 5:
            raise kaitaistruct.ConsistencyError(u"buf1", self.buf1.len, 5)
        if self.buf2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"buf2", self.buf2._root, self._root)
        if self.buf2._parent != self:
            raise kaitaistruct.ConsistencyError(u"buf2", self.buf2._parent, self)
        if self.buf2.len != 2 + 3:
            raise kaitaistruct.ConsistencyError(u"buf2", self.buf2.len, 2 + 3)
        if self.buf2.has_trailer != True:
            raise kaitaistruct.ConsistencyError(u"buf2", self.buf2.has_trailer, True)

    class MyStr1(ReadWriteKaitaiStruct):
        def __init__(self, len, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.len = len

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode(u"UTF-8")


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsCall.MyStr1, self)._write__seq(io)
            self._io.write_bytes((self.body).encode(u"UTF-8"))


        def _check(self):
            pass
            if len((self.body).encode(u"UTF-8")) != self.len:
                raise kaitaistruct.ConsistencyError(u"body", len((self.body).encode(u"UTF-8")), self.len)


    class MyStr2(ReadWriteKaitaiStruct):
        def __init__(self, len, has_trailer, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.len = len
            self.has_trailer = has_trailer

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode(u"UTF-8")
            if self.has_trailer:
                pass
                self.trailer = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self.has_trailer:
                pass



        def _write__seq(self, io=None):
            super(ParamsCall.MyStr2, self)._write__seq(io)
            self._io.write_bytes((self.body).encode(u"UTF-8"))
            if self.has_trailer:
                pass
                self._io.write_u1(self.trailer)



        def _check(self):
            pass
            if len((self.body).encode(u"UTF-8")) != self.len:
                raise kaitaistruct.ConsistencyError(u"body", len((self.body).encode(u"UTF-8")), self.len)
            if self.has_trailer:
                pass





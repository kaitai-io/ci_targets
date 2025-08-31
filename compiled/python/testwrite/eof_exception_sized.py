# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EofExceptionSized(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_buf = self._io.read_bytes(13)
        _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
        self.buf = EofExceptionSized.Foo(_io__raw_buf, self, self._root)
        self.buf._read()


    def _fetch_instances(self):
        pass
        self.buf._fetch_instances()


    def _write__seq(self, io=None):
        super(EofExceptionSized, self)._write__seq(io)
        _io__raw_buf = KaitaiStream(BytesIO(bytearray(13)))
        self._io.add_child_stream(_io__raw_buf)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (13))
        def handler(parent, _io__raw_buf=_io__raw_buf):
            self._raw_buf = _io__raw_buf.to_byte_array()
            if len(self._raw_buf) != 13:
                raise kaitaistruct.ConsistencyError(u"raw(buf)", len(self._raw_buf), 13)
            parent.write_bytes(self._raw_buf)
        _io__raw_buf.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.buf._write__seq(_io__raw_buf)


    def _check(self):
        pass
        if self.buf._root != self._root:
            raise kaitaistruct.ConsistencyError(u"buf", self.buf._root, self._root)
        if self.buf._parent != self:
            raise kaitaistruct.ConsistencyError(u"buf", self.buf._parent, self)

    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(EofExceptionSized.Foo, self)._write__seq(io)


        def _check(self):
            pass




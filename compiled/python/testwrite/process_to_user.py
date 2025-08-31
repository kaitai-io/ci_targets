# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessToUser(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw__raw_buf1 = self._io.read_bytes(5)
        self._raw_buf1 = KaitaiStream.process_rotate_left(self._raw__raw_buf1, 3, 1)
        _io__raw_buf1 = KaitaiStream(BytesIO(self._raw_buf1))
        self.buf1 = ProcessToUser.JustStr(_io__raw_buf1, self, self._root)
        self.buf1._read()


    def _fetch_instances(self):
        pass
        self.buf1._fetch_instances()


    def _write__seq(self, io=None):
        super(ProcessToUser, self)._write__seq(io)
        _io__raw_buf1 = KaitaiStream(BytesIO(bytearray(5)))
        self._io.add_child_stream(_io__raw_buf1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (5))
        _process_val = 3
        def handler(parent, _io__raw_buf1=_io__raw_buf1, _process_val=_process_val):
            self._raw_buf1 = _io__raw_buf1.to_byte_array()
            self._raw__raw_buf1 = KaitaiStream.process_rotate_left(self._raw_buf1, 8 - (_process_val), 1)
            if len(self._raw__raw_buf1) != 5:
                raise kaitaistruct.ConsistencyError(u"raw(buf1)", len(self._raw__raw_buf1), 5)
            parent.write_bytes(self._raw__raw_buf1)
        _io__raw_buf1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.buf1._write__seq(_io__raw_buf1)


    def _check(self):
        pass
        if self.buf1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"buf1", self.buf1._root, self._root)
        if self.buf1._parent != self:
            raise kaitaistruct.ConsistencyError(u"buf1", self.buf1._parent, self)

    class JustStr(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.str = (self._io.read_bytes_full()).decode(u"UTF-8")


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ProcessToUser.JustStr, self)._write__seq(io)
            self._io.write_bytes((self.str).encode(u"UTF-8"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"str", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass




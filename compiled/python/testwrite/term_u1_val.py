# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermU1Val(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_bytes_term(227, False, False, True)
        self.bar = (self._io.read_bytes_term(171, True, True, True)).decode(u"UTF-8")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(TermU1Val, self)._write__seq(io)
        self._io.write_bytes(self.foo)
        _pos = self._io.pos()
        self._io.write_u1(227)
        self._io.seek(_pos)
        self._io.write_bytes((self.bar).encode(u"UTF-8"))


    def _check(self):
        pass
        if KaitaiStream.byte_array_index_of(self.foo, 227) != -1:
            raise kaitaistruct.ConsistencyError(u"foo", KaitaiStream.byte_array_index_of(self.foo, 227), -1)
        if len((self.bar).encode(u"UTF-8")) == 0:
            raise kaitaistruct.ConsistencyError(u"bar", len((self.bar).encode(u"UTF-8")), 0)
        if KaitaiStream.byte_array_index_of((self.bar).encode(u"UTF-8"), 171) != len((self.bar).encode(u"UTF-8")) - 1:
            raise kaitaistruct.ConsistencyError(u"bar", KaitaiStream.byte_array_index_of((self.bar).encode(u"UTF-8"), 171), len((self.bar).encode(u"UTF-8")) - 1)



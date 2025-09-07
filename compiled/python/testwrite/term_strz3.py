# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStrz3(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(TermStrz3, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, False, True)).decode(u"UTF-8")
        self.s2 = (self._io.read_bytes_term(64, False, False, True)).decode(u"UTF-8")
        self.s3 = (self._io.read_bytes_term(64, False, True, True)).decode(u"UTF-8")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(TermStrz3, self)._write__seq(io)
        self._io.write_bytes((self.s1).encode(u"UTF-8"))
        _pos = self._io.pos()
        self._io.write_u1(124)
        self._io.seek(_pos)
        self._io.write_bytes((self.s2).encode(u"UTF-8"))
        _pos = self._io.pos()
        self._io.write_u1(64)
        self._io.seek(_pos)
        self._io.write_bytes((self.s3).encode(u"UTF-8"))
        self._io.write_u1(64)


    def _check(self):
        if KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124) != -1:
            raise kaitaistruct.ConsistencyError(u"s1", -1, KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124))
        if KaitaiStream.byte_array_index_of((self.s2).encode(u"UTF-8"), 64) != -1:
            raise kaitaistruct.ConsistencyError(u"s2", -1, KaitaiStream.byte_array_index_of((self.s2).encode(u"UTF-8"), 64))
        if KaitaiStream.byte_array_index_of((self.s3).encode(u"UTF-8"), 64) != -1:
            raise kaitaistruct.ConsistencyError(u"s3", -1, KaitaiStream.byte_array_index_of((self.s3).encode(u"UTF-8"), 64))
        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEncodingsDefault(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrEncodingsDefault, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode(u"UTF-8")
        self.rest = StrEncodingsDefault.Subtype(self._io, self, self._root)
        self.rest._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.rest._fetch_instances()


    def _write__seq(self, io=None):
        super(StrEncodingsDefault, self)._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode(u"UTF-8"))
        self.rest._write__seq(self._io)


    def _check(self):
        if len((self.str1).encode(u"UTF-8")) != self.len_of_1:
            raise kaitaistruct.ConsistencyError(u"str1", len((self.str1).encode(u"UTF-8")), self.len_of_1)
        if self.rest._root != self._root:
            raise kaitaistruct.ConsistencyError(u"rest", self.rest._root, self._root)
        if self.rest._parent != self:
            raise kaitaistruct.ConsistencyError(u"rest", self.rest._parent, self)
        self._dirty = False

    class Subtype(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEncodingsDefault.Subtype, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.len_of_2 = self._io.read_u2le()
            self.str2 = (self._io.read_bytes(self.len_of_2)).decode(u"UTF-8")
            self.len_of_3 = self._io.read_u2le()
            self.str3 = (self._io.read_bytes(self.len_of_3)).decode(u"Shift_JIS")
            self.len_of_4 = self._io.read_u2le()
            self.str4 = (self._io.read_bytes(self.len_of_4)).decode(u"IBM437")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(StrEncodingsDefault.Subtype, self)._write__seq(io)
            self._io.write_u2le(self.len_of_2)
            self._io.write_bytes((self.str2).encode(u"UTF-8"))
            self._io.write_u2le(self.len_of_3)
            self._io.write_bytes((self.str3).encode(u"Shift_JIS"))
            self._io.write_u2le(self.len_of_4)
            self._io.write_bytes((self.str4).encode(u"IBM437"))


        def _check(self):
            if len((self.str2).encode(u"UTF-8")) != self.len_of_2:
                raise kaitaistruct.ConsistencyError(u"str2", len((self.str2).encode(u"UTF-8")), self.len_of_2)
            if len((self.str3).encode(u"Shift_JIS")) != self.len_of_3:
                raise kaitaistruct.ConsistencyError(u"str3", len((self.str3).encode(u"Shift_JIS")), self.len_of_3)
            if len((self.str4).encode(u"IBM437")) != self.len_of_4:
                raise kaitaistruct.ConsistencyError(u"str4", len((self.str4).encode(u"IBM437")), self.len_of_4)
            self._dirty = False




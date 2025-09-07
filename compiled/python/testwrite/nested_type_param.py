# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypeParam(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NestedTypeParam, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main_seq = NestedTypeParam.Nested.MyType(5, self._io, self, self._root)
        self.main_seq._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.main_seq._fetch_instances()


    def _write__seq(self, io=None):
        super(NestedTypeParam, self)._write__seq(io)
        self.main_seq._write__seq(self._io)


    def _check(self):
        if self.main_seq._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main_seq", self._root, self.main_seq._root)
        if self.main_seq._parent != self:
            raise kaitaistruct.ConsistencyError(u"main_seq", self, self.main_seq._parent)
        if self.main_seq.my_len != 5:
            raise kaitaistruct.ConsistencyError(u"main_seq", 5, self.main_seq.my_len)
        self._dirty = False

    class Nested(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NestedTypeParam.Nested, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NestedTypeParam.Nested, self)._write__seq(io)


        def _check(self):
            self._dirty = False

        class MyType(ReadWriteKaitaiStruct):
            def __init__(self, my_len, _io=None, _parent=None, _root=None):
                super(NestedTypeParam.Nested.MyType, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self.my_len = my_len

            def _read(self):
                self.body = (self._io.read_bytes(self.my_len)).decode(u"ASCII")
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedTypeParam.Nested.MyType, self)._write__seq(io)
                self._io.write_bytes((self.body).encode(u"ASCII"))


            def _check(self):
                if len((self.body).encode(u"ASCII")) != self.my_len:
                    raise kaitaistruct.ConsistencyError(u"body", self.my_len, len((self.body).encode(u"ASCII")))
                self._dirty = False





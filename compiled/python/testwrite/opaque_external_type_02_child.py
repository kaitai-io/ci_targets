# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class OpaqueExternalType02Child(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(OpaqueExternalType02Child, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode(u"UTF-8")
        self.s2 = (self._io.read_bytes_term(124, False, False, True)).decode(u"UTF-8")
        self.s3 = OpaqueExternalType02Child.OpaqueExternalType02ChildChild(self._io, self, self._root)
        self.s3._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.s3._fetch_instances()


    def _write__seq(self, io=None):
        super(OpaqueExternalType02Child, self)._write__seq(io)
        self._io.write_bytes((self.s1).encode(u"UTF-8"))
        self._io.write_u1(124)
        self._io.write_bytes((self.s2).encode(u"UTF-8"))
        _pos = self._io.pos()
        self._io.write_u1(124)
        self._io.seek(_pos)
        self.s3._write__seq(self._io)


    def _check(self):
        if KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124) != -1:
            raise kaitaistruct.ConsistencyError(u"s1", -1, KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124))
        if KaitaiStream.byte_array_index_of((self.s2).encode(u"UTF-8"), 124) != -1:
            raise kaitaistruct.ConsistencyError(u"s2", -1, KaitaiStream.byte_array_index_of((self.s2).encode(u"UTF-8"), 124))
        if self.s3._root != self._root:
            raise kaitaistruct.ConsistencyError(u"s3", self._root, self.s3._root)
        if self.s3._parent != self:
            raise kaitaistruct.ConsistencyError(u"s3", self, self.s3._parent)
        self._dirty = False

    class OpaqueExternalType02ChildChild(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(OpaqueExternalType02Child.OpaqueExternalType02ChildChild, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            if self._root.some_method:
                pass
                self.s3 = (self._io.read_bytes_term(64, True, True, True)).decode(u"UTF-8")

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self._root.some_method:
                pass



        def _write__seq(self, io=None):
            super(OpaqueExternalType02Child.OpaqueExternalType02ChildChild, self)._write__seq(io)
            if self._root.some_method:
                pass
                self._io.write_bytes((self.s3).encode(u"UTF-8"))



        def _check(self):
            if self._root.some_method:
                pass
                if len((self.s3).encode(u"UTF-8")) == 0:
                    raise kaitaistruct.ConsistencyError(u"s3", 0, len((self.s3).encode(u"UTF-8")))
                if KaitaiStream.byte_array_index_of((self.s3).encode(u"UTF-8"), 64) != len((self.s3).encode(u"UTF-8")) - 1:
                    raise kaitaistruct.ConsistencyError(u"s3", len((self.s3).encode(u"UTF-8")) - 1, KaitaiStream.byte_array_index_of((self.s3).encode(u"UTF-8"), 64))

            self._dirty = False


    @property
    def some_method(self):
        if hasattr(self, '_m_some_method'):
            return self._m_some_method

        self._m_some_method = True
        return getattr(self, '_m_some_method', None)

    def _invalidate_some_method(self):
        del self._m_some_method


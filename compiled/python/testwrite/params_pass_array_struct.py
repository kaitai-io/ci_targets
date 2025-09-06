# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ParamsPassArrayStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = ParamsPassArrayStruct.Foo(self._io, self, self._root)
        self.one._read()
        self.two = ParamsPassArrayStruct.Bar(self._io, self, self._root)
        self.two._read()
        self.pass_structs = ParamsPassArrayStruct.StructType(self.one_two, self._io, self, self._root)
        self.pass_structs._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()
        self.two._fetch_instances()
        self.pass_structs._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsPassArrayStruct, self)._write__seq(io)
        self.one._write__seq(self._io)
        self.two._write__seq(self._io)
        self.pass_structs._write__seq(self._io)


    def _check(self):
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError(u"one", self.one._root, self._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError(u"one", self.one._parent, self)
        if self.two._root != self._root:
            raise kaitaistruct.ConsistencyError(u"two", self.two._root, self._root)
        if self.two._parent != self:
            raise kaitaistruct.ConsistencyError(u"two", self.two._parent, self)
        if self.pass_structs._root != self._root:
            raise kaitaistruct.ConsistencyError(u"pass_structs", self.pass_structs._root, self._root)
        if self.pass_structs._parent != self:
            raise kaitaistruct.ConsistencyError(u"pass_structs", self.pass_structs._parent, self)
        if self.pass_structs.structs != self.one_two:
            raise kaitaistruct.ConsistencyError(u"pass_structs", self.pass_structs.structs, self.one_two)
        self._dirty = False

    class Bar(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ParamsPassArrayStruct.Bar, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.b = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassArrayStruct.Bar, self)._write__seq(io)
            self._io.write_u1(self.b)


        def _check(self):
            self._dirty = False


    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ParamsPassArrayStruct.Foo, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.f = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassArrayStruct.Foo, self)._write__seq(io)
            self._io.write_u1(self.f)


        def _check(self):
            self._dirty = False


    class StructType(ReadWriteKaitaiStruct):
        def __init__(self, structs, _io=None, _parent=None, _root=None):
            super(ParamsPassArrayStruct.StructType, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self.structs = structs

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassArrayStruct.StructType, self)._write__seq(io)


        def _check(self):
            self._dirty = False


    @property
    def one_two(self):
        if hasattr(self, '_m_one_two'):
            return self._m_one_two

        self._m_one_two = [self.one, self.two]
        return getattr(self, '_m_one_two', None)

    def _invalidate_one_two(self):
        del self._m_one_two


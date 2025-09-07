# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ParamsPassStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.first = ParamsPassStruct.Block(self._io, self, self._root)
        self.first._read()
        self.one = ParamsPassStruct.StructType(self.first, self._io, self, self._root)
        self.one._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.first._fetch_instances()
        self.one._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsPassStruct, self)._write__seq(io)
        self.first._write__seq(self._io)
        self.one._write__seq(self._io)


    def _check(self):
        if self.first._root != self._root:
            raise kaitaistruct.ConsistencyError(u"first", self._root, self.first._root)
        if self.first._parent != self:
            raise kaitaistruct.ConsistencyError(u"first", self, self.first._parent)
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError(u"one", self._root, self.one._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError(u"one", self, self.one._parent)
        if self.one.foo != self.first:
            raise kaitaistruct.ConsistencyError(u"one", self.first, self.one.foo)
        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ParamsPassStruct.Block, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassStruct.Block, self)._write__seq(io)
            self._io.write_u1(self.foo)


        def _check(self):
            self._dirty = False


    class StructType(ReadWriteKaitaiStruct):
        def __init__(self, foo, _io=None, _parent=None, _root=None):
            super(ParamsPassStruct.StructType, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self.foo = foo

        def _read(self):
            self.bar = ParamsPassStruct.StructType.Baz(self.foo, self._io, self, self._root)
            self.bar._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.bar._fetch_instances()


        def _write__seq(self, io=None):
            super(ParamsPassStruct.StructType, self)._write__seq(io)
            self.bar._write__seq(self._io)


        def _check(self):
            if self.bar._root != self._root:
                raise kaitaistruct.ConsistencyError(u"bar", self._root, self.bar._root)
            if self.bar._parent != self:
                raise kaitaistruct.ConsistencyError(u"bar", self, self.bar._parent)
            if self.bar.foo != self.foo:
                raise kaitaistruct.ConsistencyError(u"bar", self.foo, self.bar.foo)
            self._dirty = False

        class Baz(ReadWriteKaitaiStruct):
            def __init__(self, foo, _io=None, _parent=None, _root=None):
                super(ParamsPassStruct.StructType.Baz, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self.foo = foo

            def _read(self):
                self.qux = self._io.read_u1()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(ParamsPassStruct.StructType.Baz, self)._write__seq(io)
                self._io.write_u1(self.qux)


            def _check(self):
                self._dirty = False





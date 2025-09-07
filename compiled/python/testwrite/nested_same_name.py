# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedSameName(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NestedSameName, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main_data = NestedSameName.Main(self._io, self, self._root)
        self.main_data._read()
        self.dummy = NestedSameName.DummyObj(self._io, self, self._root)
        self.dummy._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.main_data._fetch_instances()
        self.dummy._fetch_instances()


    def _write__seq(self, io=None):
        super(NestedSameName, self)._write__seq(io)
        self.main_data._write__seq(self._io)
        self.dummy._write__seq(self._io)


    def _check(self):
        if self.main_data._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main_data", self._root, self.main_data._root)
        if self.main_data._parent != self:
            raise kaitaistruct.ConsistencyError(u"main_data", self, self.main_data._parent)
        if self.dummy._root != self._root:
            raise kaitaistruct.ConsistencyError(u"dummy", self._root, self.dummy._root)
        if self.dummy._parent != self:
            raise kaitaistruct.ConsistencyError(u"dummy", self, self.dummy._parent)
        self._dirty = False

    class DummyObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NestedSameName.DummyObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NestedSameName.DummyObj, self)._write__seq(io)


        def _check(self):
            self._dirty = False

        class Foo(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(NestedSameName.DummyObj.Foo, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedSameName.DummyObj.Foo, self)._write__seq(io)


            def _check(self):
                self._dirty = False



    class Main(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NestedSameName.Main, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.main_size = self._io.read_s4le()
            self.foo = NestedSameName.Main.FooObj(self._io, self, self._root)
            self.foo._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()


        def _write__seq(self, io=None):
            super(NestedSameName.Main, self)._write__seq(io)
            self._io.write_s4le(self.main_size)
            self.foo._write__seq(self._io)


        def _check(self):
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError(u"foo", self._root, self.foo._root)
            if self.foo._parent != self:
                raise kaitaistruct.ConsistencyError(u"foo", self, self.foo._parent)
            self._dirty = False

        class FooObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(NestedSameName.Main.FooObj, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.data = self._io.read_bytes(self._parent.main_size * 2)
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedSameName.Main.FooObj, self)._write__seq(io)
                self._io.write_bytes(self.data)


            def _check(self):
                if len(self.data) != self._parent.main_size * 2:
                    raise kaitaistruct.ConsistencyError(u"data", self._parent.main_size * 2, len(self.data))
                self._dirty = False





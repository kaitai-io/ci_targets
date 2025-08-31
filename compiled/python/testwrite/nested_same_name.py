# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedSameName(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main_data = NestedSameName.Main(self._io, self, self._root)
        self.main_data._read()
        self.dummy = NestedSameName.DummyObj(self._io, self, self._root)
        self.dummy._read()


    def _fetch_instances(self):
        pass
        self.main_data._fetch_instances()
        self.dummy._fetch_instances()


    def _write__seq(self, io=None):
        super(NestedSameName, self)._write__seq(io)
        self.main_data._write__seq(self._io)
        self.dummy._write__seq(self._io)


    def _check(self):
        pass
        if self.main_data._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main_data", self.main_data._root, self._root)
        if self.main_data._parent != self:
            raise kaitaistruct.ConsistencyError(u"main_data", self.main_data._parent, self)
        if self.dummy._root != self._root:
            raise kaitaistruct.ConsistencyError(u"dummy", self.dummy._root, self._root)
        if self.dummy._parent != self:
            raise kaitaistruct.ConsistencyError(u"dummy", self.dummy._parent, self)

    class DummyObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NestedSameName.DummyObj, self)._write__seq(io)


        def _check(self):
            pass

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
                super(NestedSameName.DummyObj.Foo, self)._write__seq(io)


            def _check(self):
                pass



    class Main(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.main_size = self._io.read_s4le()
            self.foo = NestedSameName.Main.FooObj(self._io, self, self._root)
            self.foo._read()


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()


        def _write__seq(self, io=None):
            super(NestedSameName.Main, self)._write__seq(io)
            self._io.write_s4le(self.main_size)
            self.foo._write__seq(self._io)


        def _check(self):
            pass
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._root, self._root)
            if self.foo._parent != self:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._parent, self)

        class FooObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.data = self._io.read_bytes(self._parent.main_size * 2)


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedSameName.Main.FooObj, self)._write__seq(io)
                self._io.write_bytes(self.data)


            def _check(self):
                pass
                if len(self.data) != self._parent.main_size * 2:
                    raise kaitaistruct.ConsistencyError(u"data", len(self.data), self._parent.main_size * 2)





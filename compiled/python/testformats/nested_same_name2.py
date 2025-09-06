# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedSameName2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NestedSameName2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.version = self._io.read_u4le()
        self.main_data = NestedSameName2.Main(self._io, self, self._root)
        self.dummy = NestedSameName2.DummyObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.main_data._fetch_instances()
        self.dummy._fetch_instances()

    class DummyObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NestedSameName2.DummyObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.dummy_size = self._io.read_s4le()
            self.foo = NestedSameName2.DummyObj.FooObj(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()

        class FooObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(NestedSameName2.DummyObj.FooObj, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.data2 = self._io.read_bytes(self._parent.dummy_size * 2)


            def _fetch_instances(self):
                pass



    class Main(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NestedSameName2.Main, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.main_size = self._io.read_s4le()
            self.foo = NestedSameName2.Main.FooObj(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()

        class FooObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(NestedSameName2.Main.FooObj, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.data1 = self._io.read_bytes(self._parent.main_size * 2)


            def _fetch_instances(self):
                pass





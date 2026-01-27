# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.first = ParamsPassStruct.Block(self._io, self, self._root)
        self.one = ParamsPassStruct.StructType(self.first, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.first._fetch_instances()
        self.one._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class StructType(KaitaiStruct):
        def __init__(self, foo, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.foo = foo
            self._read()

        def _read(self):
            self.bar = ParamsPassStruct.StructType.Baz(self.foo, self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.bar._fetch_instances()

        class Baz(KaitaiStruct):
            def __init__(self, foo, _io, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root
                self.foo = foo
                self._read()

            def _read(self):
                self.qux = self._io.read_u1()


            def _fetch_instances(self):
                pass





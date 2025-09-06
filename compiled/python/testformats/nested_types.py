# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NestedTypes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.one = NestedTypes.SubtypeA(self._io, self, self._root)
        self.two = NestedTypes.SubtypeB(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()
        self.two._fetch_instances()

    class SubtypeA(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NestedTypes.SubtypeA, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.typed_at_root = NestedTypes.SubtypeB(self._io, self, self._root)
            self.typed_here = NestedTypes.SubtypeA.SubtypeC(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.typed_at_root._fetch_instances()
            self.typed_here._fetch_instances()

        class SubtypeC(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(NestedTypes.SubtypeA.SubtypeC, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value_c = self._io.read_s1()


            def _fetch_instances(self):
                pass



    class SubtypeB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NestedTypes.SubtypeB, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value_b = self._io.read_s1()


        def _fetch_instances(self):
            pass




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypes2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = NestedTypes2.SubtypeA(self._io, self, self._root)
        self.two = NestedTypes2.SubtypeB(self._io, self, self._root)

    class SubtypeA(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.typed_at_root = NestedTypes2.SubtypeB(self._io, self, self._root)
            self.typed_here1 = NestedTypes2.SubtypeA.SubtypeC(self._io, self, self._root)
            self.typed_here2 = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)

        class SubtypeC(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.value_c = self._io.read_s1()
                self.typed_here = NestedTypes2.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
                self.typed_parent = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)
                self.typed_root = NestedTypes2.SubtypeB(self._io, self, self._root)

            class SubtypeD(KaitaiStruct):
                def __init__(self, _io, _parent=None, _root=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root if _root else self
                    self._read()

                def _read(self):
                    self.value_d = self._io.read_s1()



        class SubtypeCc(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.value_cc = self._io.read_s1()



    class SubtypeB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.value_b = self._io.read_s1()




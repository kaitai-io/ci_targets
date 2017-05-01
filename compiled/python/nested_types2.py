from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class NestedTypes2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.one = self._root.SubtypeA(self._io, self, self._root)
        self.two = self._root.SubtypeB(self._io, self, self._root)

    class SubtypeA(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.typed_at_root = self._root.SubtypeB(self._io, self, self._root)
            self.typed_here1 = self._root.SubtypeA.SubtypeC(self._io, self, self._root)
            self.typed_here2 = self._root.SubtypeA.SubtypeCc(self._io, self, self._root)

        class SubtypeC(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.value_c = self._io.read_s1()
                self.typed_here = self._root.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
                self.typed_parent = self._root.SubtypeA.SubtypeCc(self._io, self, self._root)
                self.typed_root = self._root.SubtypeB(self._io, self, self._root)

            class SubtypeD(KaitaiStruct):
                def __init__(self, _io, _parent=None, _root=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root if _root else self
                    self.value_d = self._io.read_s1()



        class SubtypeCc(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.value_cc = self._io.read_s1()



    class SubtypeB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.value_b = self._io.read_s1()




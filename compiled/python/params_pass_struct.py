# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.first = ParamsPassStruct.Block(self._io, self, self._root)
        self.one = ParamsPassStruct.StructType(self.first, self._io, self, self._root)

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()


    class StructType(KaitaiStruct):
        def __init__(self, foo, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.foo = foo
            self._read()

        def _read(self):
            self.bar = ParamsPassStruct.StructType.Baz(self.foo, self._io, self, self._root)

        class Baz(KaitaiStruct):
            def __init__(self, foo, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.foo = foo
                self._read()

            def _read(self):
                self.qux = self._io.read_u1()





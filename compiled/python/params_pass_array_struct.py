# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = ParamsPassArrayStruct.Foo(self._io, self, self._root)
        self.two = ParamsPassArrayStruct.Bar(self._io, self, self._root)
        self.pass_structs = ParamsPassArrayStruct.StructType(self.one_two, self._io, self, self._root)

    class Bar(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.b = self._io.read_u1()


    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.f = self._io.read_u1()


    class StructType(KaitaiStruct):
        def __init__(self, structs, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.structs = structs
            self._read()

        def _read(self):
            pass


    @property
    def one_two(self):
        if hasattr(self, '_m_one_two'):
            return self._m_one_two

        self._m_one_two = [self.one, self.two]
        return getattr(self, '_m_one_two', None)



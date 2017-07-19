# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class RepeatUntilComplex(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.first = []
        while True:
            _ = self._root.TypeU1(self._io, self, self._root)
            self.first.append(_)
            if _.count == 0:
                break
        self.second = []
        while True:
            _ = self._root.TypeU2(self._io, self, self._root)
            self.second.append(_)
            if _.count == 0:
                break
        self.third = []
        while True:
            _ = self._io.read_u1()
            self.third.append(_)
            if _ == 0:
                break

    class TypeU1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.count = self._io.read_u1()
            self.values = [None] * (self.count)
            for i in range(self.count):
                self.values[i] = self._io.read_u1()



    class TypeU2(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.count = self._io.read_u2le()
            self.values = [None] * (self.count)
            for i in range(self.count):
                self.values[i] = self._io.read_u2le()





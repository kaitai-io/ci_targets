# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilComplex(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.first = []
        i = 0
        while True:
            _ = RepeatUntilComplex.TypeU1(self._io, self, self._root)
            self.first.append(_)
            if _.count == 0:
                break
            i += 1
        self.second = []
        i = 0
        while True:
            _ = RepeatUntilComplex.TypeU2(self._io, self, self._root)
            self.second.append(_)
            if _.count == 0:
                break
            i += 1
        self.third = []
        i = 0
        while True:
            _ = self._io.read_u1()
            self.third.append(_)
            if _ == 0:
                break
            i += 1

    class TypeU1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.count = self._io.read_u1()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u1())



    class TypeU2(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.count = self._io.read_u2le()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u2le())





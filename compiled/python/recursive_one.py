# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RecursiveOne(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_u1()
        _on = (self.one & 3)
        if _on == 0:
            self.next = RecursiveOne(self._io)
        elif _on == 1:
            self.next = RecursiveOne(self._io)
        elif _on == 2:
            self.next = RecursiveOne(self._io)
        elif _on == 3:
            self.next = RecursiveOne.Fini(self._io, self, self._root)

    class Fini(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.finisher = self._io.read_u2le()




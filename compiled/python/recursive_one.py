from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class RecursiveOne(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.one = self._io.read_u1()
        _on = (self.one & 3)
        if _on == 0:
            self.next = RecursiveOne(self._io)
        elif _on == 1:
            self.next = RecursiveOne(self._io)
        elif _on == 2:
            self.next = RecursiveOne(self._io)
        elif _on == 3:
            self.next = self._root.Fini(self._io, self, self._root)

    class Fini(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.finisher = self._io.read_u2le()




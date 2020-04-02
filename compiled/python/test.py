# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class Test(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.seq_block = Test(self._io)

    class MyType(KaitaiStruct):
        def __init__(self, repeat_count, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.repeat_count = repeat_count
            self._read()

        def _read(self):
            self.world = self._io.read_s4be()
            self.repeated_thing = [None] * (self.repeat_count)
            for i in range(self.repeat_count):
                self.repeated_thing[i] = self._io.read_s4be()





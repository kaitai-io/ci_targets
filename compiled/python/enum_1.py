# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class Enum1(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.main = self._root.MainObj(self._io, self, self._root)

    class MainObj(KaitaiStruct):

        class Animal(Enum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.submain = self._root.MainObj.SubmainObj(self._io, self, self._root)

        class SubmainObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.pet_1 = KaitaiStream.resolve_enum(self._root.MainObj.Animal, self._io.read_u4le())
                self.pet_2 = KaitaiStream.resolve_enum(self._root.MainObj.Animal, self._io.read_u4le())





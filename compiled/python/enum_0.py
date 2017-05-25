from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Enum0(KaitaiStruct):

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
        self.pet_1 = self._root.Animal(self._io.read_u4le())
        self.pet_2 = self._root.Animal(self._io.read_u4le())



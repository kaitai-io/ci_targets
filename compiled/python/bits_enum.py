# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class BitsEnum(KaitaiStruct):

    class Animal(Enum):
        cat = 0
        dog = 1
        horse = 4
        platypus = 5
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._root.Animal(self._io.read_bits_int(4))
        self.two = self._root.Animal(self._io.read_bits_int(8))
        self.three = self._root.Animal(self._io.read_bits_int(1))



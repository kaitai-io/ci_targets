# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsSeqEndianCombo(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.be1 = self._io.read_bits_int(6)
        self.be2 = self._io.read_bits_int(10)
        self.le3 = self._io.read_bits_int(8)
        self.be4 = self._io.read_bits_int(8)
        self.le5 = self._io.read_bits_int(5)
        self.le6 = self._io.read_bits_int(6)
        self.le7 = self._io.read_bits_int(5)
        self.be8 = self._io.read_bits_int(1) != 0



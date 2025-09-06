# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsSeqEndianCombo(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(BitsSeqEndianCombo, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.be1 = self._io.read_bits_int_be(6)
        self.be2 = self._io.read_bits_int_be(10)
        self.le3 = self._io.read_bits_int_le(8)
        self.be4 = self._io.read_bits_int_be(8)
        self.le5 = self._io.read_bits_int_le(5)
        self.le6 = self._io.read_bits_int_le(6)
        self.le7 = self._io.read_bits_int_le(5)
        self.be8 = self._io.read_bits_int_be(1) != 0
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BitsSeqEndianCombo, self)._write__seq(io)
        self._io.write_bits_int_be(6, self.be1)
        self._io.write_bits_int_be(10, self.be2)
        self._io.write_bits_int_le(8, self.le3)
        self._io.write_bits_int_be(8, self.be4)
        self._io.write_bits_int_le(5, self.le5)
        self._io.write_bits_int_le(6, self.le6)
        self._io.write_bits_int_le(5, self.le7)
        self._io.write_bits_int_be(1, int(self.be8))


    def _check(self):
        self._dirty = False



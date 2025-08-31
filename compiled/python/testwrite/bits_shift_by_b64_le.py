# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsShiftByB64Le(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.a = self._io.read_bits_int_le(64)
        self.b = self._io.read_bits_int_le(8)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BitsShiftByB64Le, self)._write__seq(io)
        self._io.write_bits_int_le(64, self.a)
        self._io.write_bits_int_le(8, self.b)


    def _check(self):
        pass



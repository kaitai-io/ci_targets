# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsByteAlignedEofBe(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(BitsByteAlignedEofBe, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.prebuf = self._io.read_bytes(8)
        self.bits = self._io.read_bits_int_be(31)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BitsByteAlignedEofBe, self)._write__seq(io)
        self._io.write_bytes(self.prebuf)
        self._io.write_bits_int_be(31, self.bits)


    def _check(self):
        if len(self.prebuf) != 8:
            raise kaitaistruct.ConsistencyError(u"prebuf", len(self.prebuf), 8)
        self._dirty = False



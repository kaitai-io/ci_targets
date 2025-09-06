# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoPosBits(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ExprIoPosBits, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = self._io.read_bits_int_be(3)
        if self._io.pos() == 1:
            pass
            self.bar = self._io.read_bits_int_be(5)

        if self._io.pos() == 1:
            pass
            self.baz = self._io.read_bits_int_be(1) != 0

        if self._io.pos() == 2:
            pass
            self.qux = self._io.read_bits_int_be(7)



    def _fetch_instances(self):
        pass
        if self._io.pos() == 1:
            pass

        if self._io.pos() == 1:
            pass

        if self._io.pos() == 2:
            pass




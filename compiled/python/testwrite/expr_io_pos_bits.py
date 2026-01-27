# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprIoPosBits(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

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

        self._dirty = False


    def _fetch_instances(self):
        pass
        if self._io.pos() == 1:
            pass

        if self._io.pos() == 1:
            pass

        if self._io.pos() == 2:
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bits_int_be(3, self.foo)
        if self._io.pos() == 1:
            pass
            self._io.write_bits_int_be(5, self.bar)

        if self._io.pos() == 1:
            pass
            self._io.write_bits_int_be(1, int(self.baz))

        if self._io.pos() == 2:
            pass
            self._io.write_bits_int_be(7, self.qux)



    def _check(self):
        self._dirty = False



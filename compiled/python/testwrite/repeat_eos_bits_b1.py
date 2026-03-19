# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatEosBitsB1(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.bits = []
        i = 0
        while not self._io.is_eof():
            self.bits.append(self._io.read_bits_int_be(1) != 0)
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.bits)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.bits)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError("bits", 0, self._io.size() - self._io.pos())
            self._io.write_bits_int_be(1, int(self.bits[i]))

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError("bits", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.bits)):
            pass

        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultBitEndianMod(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.main = DefaultBitEndianMod.MainObj(self._io, self, self._root)

    class MainObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.one = self._io.read_bits_int_le(9)
            self.two = self._io.read_bits_int_le(15)
            self._io.align_to_byte()
            self.nest = DefaultBitEndianMod.MainObj.Subnest(self._io, self, self._root)
            self.nest_be = DefaultBitEndianMod.MainObj.SubnestBe(self._io, self, self._root)

        class Subnest(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.two = self._io.read_bits_int_le(16)


        class SubnestBe(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.two = self._io.read_bits_int_be(16)





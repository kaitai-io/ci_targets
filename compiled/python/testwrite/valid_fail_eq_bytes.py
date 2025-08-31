# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailEqBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_bytes(2)
        if not self.foo == b"\x51\x41":
            raise kaitaistruct.ValidationNotEqualError(b"\x51\x41", self.foo, self._io, u"/seq/0")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailEqBytes, self)._write__seq(io)
        self._io.write_bytes(self.foo)


    def _check(self):
        pass
        if len(self.foo) != 2:
            raise kaitaistruct.ConsistencyError(u"foo", len(self.foo), 2)
        if not self.foo == b"\x51\x41":
            raise kaitaistruct.ValidationNotEqualError(b"\x51\x41", self.foo, None, u"/seq/0")



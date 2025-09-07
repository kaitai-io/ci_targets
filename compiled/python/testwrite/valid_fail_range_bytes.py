# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidFailRangeBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_bytes(2)
        if not self.foo >= b"\x50":
            raise kaitaistruct.ValidationLessThanError(b"\x50", self.foo, self._io, u"/seq/0")
        if not self.foo <= b"\x50\x31":
            raise kaitaistruct.ValidationGreaterThanError(b"\x50\x31", self.foo, self._io, u"/seq/0")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailRangeBytes, self)._write__seq(io)
        self._io.write_bytes(self.foo)


    def _check(self):
        if len(self.foo) != 2:
            raise kaitaistruct.ConsistencyError(u"foo", 2, len(self.foo))
        if not self.foo >= b"\x50":
            raise kaitaistruct.ValidationLessThanError(b"\x50", self.foo, None, u"/seq/0")
        if not self.foo <= b"\x50\x31":
            raise kaitaistruct.ValidationGreaterThanError(b"\x50\x31", self.foo, None, u"/seq/0")
        self._dirty = False



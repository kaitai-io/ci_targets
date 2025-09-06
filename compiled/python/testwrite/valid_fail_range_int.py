# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeInt(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidFailRangeInt, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_u1()
        if not self.foo >= 5:
            raise kaitaistruct.ValidationLessThanError(5, self.foo, self._io, u"/seq/0")
        if not self.foo <= 10:
            raise kaitaistruct.ValidationGreaterThanError(10, self.foo, self._io, u"/seq/0")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailRangeInt, self)._write__seq(io)
        self._io.write_u1(self.foo)


    def _check(self):
        if not self.foo >= 5:
            raise kaitaistruct.ValidationLessThanError(5, self.foo, None, u"/seq/0")
        if not self.foo <= 10:
            raise kaitaistruct.ValidationGreaterThanError(10, self.foo, None, u"/seq/0")
        self._dirty = False



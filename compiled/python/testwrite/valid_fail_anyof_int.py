# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailAnyofInt(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_u1()
        if not  ((self.foo == 5) or (self.foo == 6) or (self.foo == 7) or (self.foo == 8) or (self.foo == 10) or (self.foo == 11) or (self.foo == 12) or (self.foo == 47)) :
            raise kaitaistruct.ValidationNotAnyOfError(self.foo, self._io, u"/seq/0")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailAnyofInt, self)._write__seq(io)
        self._io.write_u1(self.foo)


    def _check(self):
        pass
        if not  ((self.foo == 5) or (self.foo == 6) or (self.foo == 7) or (self.foo == 8) or (self.foo == 10) or (self.foo == 11) or (self.foo == 12) or (self.foo == 47)) :
            raise kaitaistruct.ValidationNotAnyOfError(self.foo, None, u"/seq/0")


